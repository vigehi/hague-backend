require "application_system_test_case"

class CityDataTest < ApplicationSystemTestCase
  setup do
    @city_datum = city_data(:one)
  end

  test "visiting the index" do
    visit city_data_url
    assert_selector "h1", text: "City data"
  end

  test "should create city datum" do
    visit city_data_url
    click_on "New city datum"

    fill_in "Cityname", with: @city_datum.cityName
    fill_in "Externalfactors", with: @city_datum.externalFactors
    fill_in "Seasonalvariation", with: @city_datum.seasonalVariation
    fill_in "User", with: @city_datum.user_id
    click_on "Create City datum"

    assert_text "City datum was successfully created"
    click_on "Back"
  end

  test "should update City datum" do
    visit city_datum_url(@city_datum)
    click_on "Edit this city datum", match: :first

    fill_in "Cityname", with: @city_datum.cityName
    fill_in "Externalfactors", with: @city_datum.externalFactors
    fill_in "Seasonalvariation", with: @city_datum.seasonalVariation
    fill_in "User", with: @city_datum.user_id
    click_on "Update City datum"

    assert_text "City datum was successfully updated"
    click_on "Back"
  end

  test "should destroy City datum" do
    visit city_datum_url(@city_datum)
    click_on "Destroy this city datum", match: :first

    assert_text "City datum was successfully destroyed"
  end
end
