class User < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true, length: { minimum: 3 }

  scope :ordered, -> { order(created_at: :desc) }
end
