require "test_helper"

class CityDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @city_datum = city_data(:one)
  end

  test "should get index" do
    get city_data_url
    assert_response :success
  end

  test "should get new" do
    get new_city_datum_url
    assert_response :success
  end

  test "should create city_datum" do
    assert_difference("CityDatum.count") do
      post city_data_url, params: { city_datum: { cityName: @city_datum.cityName, externalFactors: @city_datum.externalFactors, seasonalVariation: @city_datum.seasonalVariation, user_id: @city_datum.user_id } }
    end

    assert_redirected_to city_datum_url(CityDatum.last)
  end

  test "should show city_datum" do
    get city_datum_url(@city_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_city_datum_url(@city_datum)
    assert_response :success
  end

  test "should update city_datum" do
    patch city_datum_url(@city_datum), params: { city_datum: { cityName: @city_datum.cityName, externalFactors: @city_datum.externalFactors, seasonalVariation: @city_datum.seasonalVariation, user_id: @city_datum.user_id } }
    assert_redirected_to city_datum_url(@city_datum)
  end

  test "should destroy city_datum" do
    assert_difference("CityDatum.count", -1) do
      delete city_datum_url(@city_datum)
    end

    assert_redirected_to city_data_url
  end
end
