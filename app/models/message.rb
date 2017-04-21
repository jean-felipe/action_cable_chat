class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  def creation
  	created_at.try(:strftime, "%d/%m/%Y %H:%M:%S")
  end
end
