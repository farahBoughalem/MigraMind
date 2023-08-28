class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true
end
