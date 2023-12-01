require "application_system_test_case"

class UserTypesTest < ApplicationSystemTestCase
  setup do
    @user_type = user_types(:one)
  end

  test "visiting the index" do
    visit user_types_url
    assert_selector "h1", text: "User types"
  end

  test "should create user type" do
    visit user_types_url
    click_on "New user type"

    fill_in "Type name", with: @user_type.type_name
    fill_in "User", with: @user_type.user_id
    click_on "Create User type"

    assert_text "User type was successfully created"
    click_on "Back"
  end

  test "should update User type" do
    visit user_type_url(@user_type)
    click_on "Edit this user type", match: :first

    fill_in "Type name", with: @user_type.type_name
    fill_in "User", with: @user_type.user_id
    click_on "Update User type"

    assert_text "User type was successfully updated"
    click_on "Back"
  end

  test "should destroy User type" do
    visit user_type_url(@user_type)
    click_on "Destroy this user type", match: :first

    assert_text "User type was successfully destroyed"
  end
end
