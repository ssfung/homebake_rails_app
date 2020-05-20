class Cart < ApplicationRecord
  belongs_to :user
  has_many :carts_listings
  has_many :listings, through: :carts_listings
end
