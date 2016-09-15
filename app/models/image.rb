class Image < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :category_tags
  has_many :category_tags
  has_many :user_tags
  has_many :tagged_users, source: :user, through: :user_tags



  has_attached_file :attachment, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\z/
end
