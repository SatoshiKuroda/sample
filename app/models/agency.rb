class Agency < ApplicationRecord
  has_many :fashion_models
  has_many :images, through: :fashion_model_
end

l
1
|
o
0
 
　
