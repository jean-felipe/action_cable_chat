class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
  :recoverable, :rememberable, :trackable, :validatable

  has_many :chatrrom_users
  has_many :chatrooms, through: :chatroom_users
  has_many :messages
end
