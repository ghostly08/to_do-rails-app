class Task < ApplicationRecord
  belongs_to :user

  validates :name, :status, presence: true
end
