class Image < ApplicationRecord
  belongs_to :fashion_model
  mount_uploader :image, ImageUploader
end
