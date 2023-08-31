class Event < ApplicationRecord
  geocoded_by :address
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :description, presence: true
  validates :date, presence: true

  has_one_attached :photo

  after_validation :geocode, if: :will_save_change_to_address?
end
