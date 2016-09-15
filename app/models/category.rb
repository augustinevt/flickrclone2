class Category < ApplicationRecord
  has_many :images,  through: :category_tags
  has_many :category_tags

end
