class ListingsCategory < ApplicationRecord
  belongs_to :listing
  belongs_to :category
end
