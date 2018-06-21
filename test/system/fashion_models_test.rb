require "application_system_test_case"

class FashionModelsTest < ApplicationSystemTestCase
  setup do
    @fashion_model = fashion_models(:one)
  end

  test "visiting the index" do
    visit fashion_models_url
    assert_selector "h1", text: "Fashion Models"
  end

  test "creating a Fashion model" do
    visit fashion_models_url
    click_on "New Fashion Model"

    fill_in "Agency", with: @fashion_model.agency
    fill_in "Bust", with: @fashion_model.bust
    fill_in "Gender", with: @fashion_model.gender
    fill_in "Height", with: @fashion_model.height
    fill_in "Hip", with: @fashion_model.hip
    fill_in "Name", with: @fashion_model.name
    fill_in "Waist", with: @fashion_model.waist
    click_on "Create Fashion model"

    assert_text "Fashion model was successfully created"
    click_on "Back"
  end

  test "updating a Fashion model" do
    visit fashion_models_url
    click_on "Edit", match: :first

    fill_in "Agency", with: @fashion_model.agency
    fill_in "Bust", with: @fashion_model.bust
    fill_in "Gender", with: @fashion_model.gender
    fill_in "Height", with: @fashion_model.height
    fill_in "Hip", with: @fashion_model.hip
    fill_in "Name", with: @fashion_model.name
    fill_in "Waist", with: @fashion_model.waist
    click_on "Update Fashion model"

    assert_text "Fashion model was successfully updated"
    click_on "Back"
  end

  test "destroying a Fashion model" do
    visit fashion_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fashion model was successfully destroyed"
  end
end
