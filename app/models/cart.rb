class Cart < ApplicationRecord
  belongs_to :user
  has_many :listings, through: :carts_listings
  has_many :carts_listings
end
