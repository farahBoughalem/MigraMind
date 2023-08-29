class User < ApplicationRecord
  has_many :events
  has_many :posts
  has_many :comments
  has_many :likes, as: :likable
  has_many :tasks, through: :user_tasks
  has_many :user_tasks
  has_many :attendees

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
