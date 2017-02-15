class Restaurant < ApplicationRecord

  restaurant_categories = [
    "chinese",
    "italian",
    "japanese",
    "french",
    "belgian"
  ]

  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: restaurant_categories, allow_nil: false }

end


# A restaurant must have at least a name and an address.
# The restaurant category should belong to a fixed list
# ["chinese", "italian", "japanese", "french", "belgian"]
