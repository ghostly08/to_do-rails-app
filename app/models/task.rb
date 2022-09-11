class Task < ApplicationRecord
  belongs_to :user

  validates :name, :status, :description, presence: true
end
