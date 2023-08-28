class Task < ApplicationRecord
  has_many :users, through: :user_tasks
  has_many :user_tasks
end
