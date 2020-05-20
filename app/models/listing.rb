class Listing < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :picture, presence:true

  has_many :listings_categories, dependent: :destroy
  has_many :categories, through: :listings_categories
  has_one_attached :picture
  has_many :carts, through: :carts_listings, dependent: :destroy
  has_many :carts_listings, dependent: :destroy
  belongs_to :user
end

