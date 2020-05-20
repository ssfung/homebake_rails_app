class Category < ApplicationRecord
  has_many :listings_categories, dependent: :destroy
  has_many :listings, through: :listings_categories
end
