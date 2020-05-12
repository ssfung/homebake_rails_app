class Listing < ApplicationRecord
  belongs_to :baker
  has_many :listings_categories
  has_many :categories, through: :listings_categories
  validates :title, presence: true
  # validates :description, presence: true,
  # validates :price, presence: true,
  # validates :quantity, presence: true,
  # validates :delivery, presence: true,
  # validates :gluten_free, presence: true,
  # validates :dairy_free, presence: true,

end

