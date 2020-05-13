class Cart < ApplicationRecord
  belongs_to :user
  has_many :listings, through: :carts_listings
end
