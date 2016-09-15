class CategoryTag < ApplicationRecord
  belongs_to :image
  belongs_to :category
end
