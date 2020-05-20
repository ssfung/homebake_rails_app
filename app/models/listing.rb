class Listing < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :picture, presence:true

  has_many :listings_categories, dependent: :destroy
  has_many :categories, through: :listings_categories
  has_one_attached :picture
  has_many :carts, through: :carts_listings
  has_many :carts_listings
  belongs_to :user
end

# validates :title, presence: true
# validates :description, presence: true
# validates :price, presence: true
# validates :quantity, presence: true
# validates :delivery, presence: true
# validates :gluten_free, presence: true
# validates :dairy_free, presence: true
