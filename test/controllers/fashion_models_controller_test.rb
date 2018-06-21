require 'test_helper'

class FashionModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fashion_model = fashion_models(:one)
  end

  test "should get index" do
    get fashion_models_url
    assert_response :success
  end

  test "should get new" do
    get new_fashion_model_url
    assert_response :success
  end

  test "should create fashion_model" do
    assert_difference('FashionModel.count') do
      post fashion_models_url, params: { fashion_model: { agency: @fashion_model.agency, bust: @fashion_model.bust, gender: @fashion_model.gender, height: @fashion_model.height, hip: @fashion_model.hip, name: @fashion_model.name, waist: @fashion_model.waist } }
    end

    assert_redirected_to fashion_model_url(FashionModel.last)
  end

  test "should show fashion_model" do
    get fashion_model_url(@fashion_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_fashion_model_url(@fashion_model)
    assert_response :success
  end

  test "should update fashion_model" do
    patch fashion_model_url(@fashion_model), params: { fashion_model: { agency: @fashion_model.agency, bust: @fashion_model.bust, gender: @fashion_model.gender, height: @fashion_model.height, hip: @fashion_model.hip, name: @fashion_model.name, waist: @fashion_model.waist } }
    assert_redirected_to fashion_model_url(@fashion_model)
  end

  test "should destroy fashion_model" do
    assert_difference('FashionModel.count', -1) do
      delete fashion_model_url(@fashion_model)
    end

    assert_redirected_to fashion_models_url
  end
end
