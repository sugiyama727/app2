class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :post_images, dependent: :destroy #追加

  has_many :post_comments, dependent: :destroy#追加

  has_many :favorites, dependent: :destroy#追加

  attachment :profile_image
end
