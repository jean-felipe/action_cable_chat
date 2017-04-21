# == Schema Information
#
# Table name: messages
#
#  id          :integer          not null, primary key
#  chatroom_id :integer
#  user_id     :integer
#  body        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_messages_on_chatroom_id  (chatroom_id)
#  index_messages_on_user_id      (user_id)
#

FactoryGirl.define do
  factory :message do
    chatroom nil
    user nil
    body "MyText"
  end
end
