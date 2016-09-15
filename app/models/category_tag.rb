class CategoryTag < ApplicationRecord
  belongs_to :image
  belongs_to :category
  validates_uniqueness_of :category_id, :scope => :image_id
end
