require "application_system_test_case"

class IdtiAreasTest < ApplicationSystemTestCase
  setup do
    @idti_area = idti_areas(:one)
  end

  test "visiting the index" do
    visit idti_areas_url
    assert_selector "h1", text: "Idti Areas"
  end

  test "creating a Idti area" do
    visit idti_areas_url
    click_on "New Idti Area"

    fill_in "Center", with: @idti_area.center_id
    fill_in "Name", with: @idti_area.name
    click_on "Create Idti area"

    assert_text "Idti area was successfully created"
    click_on "Back"
  end

  test "updating a Idti area" do
    visit idti_areas_url
    click_on "Edit", match: :first

    fill_in "Center", with: @idti_area.center_id
    fill_in "Name", with: @idti_area.name
    click_on "Update Idti area"

    assert_text "Idti area was successfully updated"
    click_on "Back"
  end

  test "destroying a Idti area" do
    visit idti_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Idti area was successfully destroyed"
  end
end
