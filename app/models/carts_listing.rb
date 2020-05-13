class CartsListing < ApplicationRecord
  belongs_to :cart
  belongs_to :listing
end
