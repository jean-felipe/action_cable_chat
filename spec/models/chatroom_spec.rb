# == Schema Information
#
# Table name: chatrooms
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

describe Chatroom do
	it{should have_many :chatroom_users}
	it{should have_many :users}
	it{should have_many :messages}

end
