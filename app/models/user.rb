class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_one :user_profile
  has_many :images
  has_many :user_tags
  has_many :tagged_images, through: :user_tags, source: :image
end
