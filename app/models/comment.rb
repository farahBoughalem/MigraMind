class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :likes, as: :likable
  validates :content, presence: true

  def liked_by_current_user?(user)
    likes.find_by(likable_id: id, user:) ? true : false
  end
end
