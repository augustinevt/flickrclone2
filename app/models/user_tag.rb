class UserTag < ApplicationRecord
  belongs_to :user
  belongs_to :image
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  validates_uniqueness_of :user_id, scope: :image_id
end
