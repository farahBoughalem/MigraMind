class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, as: :likable
  has_many :comments, dependent: :destroy

  validates :content, presence: true
  validates :category, presence: true

  def liked_by_current_user?(user)
    likes.find_by(likable_id: id, user:) ? true : false
  end
end
