# == Schema Information
#
# Table name: chatroom_users
#
#  id           :integer          not null, primary key
#  chatroom_id  :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  last_read_at :datetime
#
# Indexes
#
#  index_chatroom_users_on_chatroom_id  (chatroom_id)
#  index_chatroom_users_on_user_id      (user_id)
#

require 'rails_helper'

describe ChatroomUser do
	it{should belong_to :chatroom}
	it{should belong_to :user}
	
end
