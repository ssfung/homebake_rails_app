class Category < ApplicationRecord
  has_many :listings_catagories
  has_many :listings, through: :listings_categories
end
