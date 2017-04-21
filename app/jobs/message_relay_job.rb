require 'net/http'
require 'uri'
require 'json'
require 'nokogiri'
require 'open-uri'

class MessageRelayJob < ApplicationJob
  queue_as :default

  def perform(message)
  	translation_call(message)
    ActionCable.server.broadcast "chatrooms:#{message.chatroom.id}", {
      message: MessagesController.render(message),
      chatroom_id: message.chatroom.id
  }
  end

  private

  def translation_call(message)
  	uri = URI.parse("http://www.degraeve.com/cgi-bin/babel.cgi?d=#{message.user.dialects}&url=&w=#{message.body}")
  	response = Net::HTTP.get(uri)

  	page = Nokogiri::HTML(response)
  	
  	message.body = page.css("p").text
  	return message
  end
end
