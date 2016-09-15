class Category < ApplicationRecord
  has_many :images, through: :category_tags

end
