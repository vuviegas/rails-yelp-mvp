class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5).to_a,
    message: "%{value} is not a valid rate" }
  validates :rating, numericality: { only_integer: true }
end
