class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true

  validates_numericality_of :rating, only_integer: true
  validates :rating, inclusion: { in: (0..5).to_a, allow_nil: false }

end

# A review must have a parent restaurant.
# A review must have a content and a rating.
# The rating should be a number between 0 and 5.
