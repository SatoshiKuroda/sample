class FashionModelsController < InheritedResources::Base
  
  def index
    @fashion_models = FashionModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @friends }
    end
  end

  def show
    @fashion_model = FashionModel.find(params[:id])
    @images        = @fashion_model.images
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @friends }
    end
  end

  def new
    @fashion_model = FashionModel.new(fashion_model_params)
    @fashion_model.images.build
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @friends }
    end
  end

  def edit
    @fashion_model = FashionModel.find(params[:id])
  end

  private

    def fashion_model_params
      params.require(:fashion_model).permit(
        :name,
        :height,
        :bust, 
        :waist, 
        :hip, 
        :gender, 
        :agency, 
        images_attributes:[:id,:image])
    end
end

