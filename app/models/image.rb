class Image < ApplicationRecord

  has_many :fashion_model_and_images, dependent: :destroy
  has_many :fashion_model, through: :fashion_model_and_images
  mount_uploader :image, ImageUploader
  
end
