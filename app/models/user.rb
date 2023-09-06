class User < ApplicationRecord
  has_many :events
  has_many :posts
  has_many :comments
  has_many :likes, as: :likable, dependent: :destroy
  has_many :tasks, through: :user_tasks
  has_many :user_tasks
  has_many :attendees
  has_many :joined_events, through: :attendees, source: :event
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true

  # for chat
  has_many :chatrooms_as_sender, class_name: "Chatroom", foreign_key: :sender_id
  has_many :chatrooms_as_receiver, class_name: "Chatroom", foreign_key: :receiver_id
  has_many :messages, dependent: :destroy

  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
