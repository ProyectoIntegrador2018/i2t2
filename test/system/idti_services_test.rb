require "application_system_test_case"

class IdtiServicesTest < ApplicationSystemTestCase
  setup do
    @idti_service = idti_services(:one)
  end

  test "visiting the index" do
    visit idti_services_url
    assert_selector "h1", text: "Idti Services"
  end

  test "creating a Idti service" do
    visit idti_services_url
    click_on "New Idti Service"

    fill_in "Center", with: @idti_service.center_id
    fill_in "Industry", with: @idti_service.industry
    fill_in "Name", with: @idti_service.name
    click_on "Create Idti service"

    assert_text "Idti service was successfully created"
    click_on "Back"
  end

  test "updating a Idti service" do
    visit idti_services_url
    click_on "Edit", match: :first

    fill_in "Center", with: @idti_service.center_id
    fill_in "Industry", with: @idti_service.industry
    fill_in "Name", with: @idti_service.name
    click_on "Update Idti service"

    assert_text "Idti service was successfully updated"
    click_on "Back"
  end

  test "destroying a Idti service" do
    visit idti_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Idti service was successfully destroyed"
  end
end
