class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :description, presence: true
  validates :date, presence: true

  has_one_attached :photo
end
