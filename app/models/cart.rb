class Cart < ApplicationRecord
  belongs_to :user
  has_many :carts_listings, dependent: :destroy
  has_many :listings, through: :carts_listings
end
