class FashionModel < ApplicationRecord
  has_many :images
  accepts_nested_attributes_for :images

  def index
    @fashion_models = FashionMondel.all
  end

  def show
    @fashion_model = FashionModel.find(params[:id])
  end

end
