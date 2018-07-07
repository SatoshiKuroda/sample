class FashionModel < ApplicationRecord

  has_many :fashion_model_and_images, dependent: :destroy
  has_many :images, through: :fashion_model_and_images
  accepts_nested_attributes_for :images

end
