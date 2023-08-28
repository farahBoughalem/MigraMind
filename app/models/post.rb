class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, as: :likable

  validates :content, presence: true
  validates :category, presence: true
end
