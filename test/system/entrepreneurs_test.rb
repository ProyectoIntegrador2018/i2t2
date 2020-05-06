require "application_system_test_case"

class EntrepreneursTest < ApplicationSystemTestCase
  setup do
    @entrepreneur = entrepreneurs(:one)
  end

  test "visiting the index" do
    visit entrepreneurs_url
    assert_selector "h1", text: "Entrepreneurs"
  end

  test "creating a Entrepreneur" do
    visit entrepreneurs_url
    click_on "New Entrepreneur"

    fill_in "Organization", with: @entrepreneur.organization
    click_on "Create Entrepreneur"

    assert_text "Entrepreneur was successfully created"
    click_on "Back"
  end

  test "updating a Entrepreneur" do
    visit entrepreneurs_url
    click_on "Edit", match: :first

    fill_in "Organization", with: @entrepreneur.organization
    click_on "Update Entrepreneur"

    assert_text "Entrepreneur was successfully updated"
    click_on "Back"
  end

  test "destroying a Entrepreneur" do
    visit entrepreneurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entrepreneur was successfully destroyed"
  end
end
