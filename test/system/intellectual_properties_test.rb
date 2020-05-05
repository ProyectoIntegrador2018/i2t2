require "application_system_test_case"

class IntellectualPropertiesTest < ApplicationSystemTestCase
  setup do
    @intellectual_property = intellectual_properties(:one)
  end

  test "visiting the index" do
    visit intellectual_properties_url
    assert_selector "h1", text: "Intellectual Properties"
  end

  test "creating a Intellectual property" do
    visit intellectual_properties_url
    click_on "New Intellectual Property"

    fill_in "Creation", with: @intellectual_property.creation
    fill_in "Description", with: @intellectual_property.description
    fill_in "Institution", with: @intellectual_property.institution
    fill_in "Keywords", with: @intellectual_property.keywords
    fill_in "Publication year", with: @intellectual_property.publication_year
    fill_in "Registration year", with: @intellectual_property.registration_year
    click_on "Create Intellectual property"

    assert_text "Intellectual property was successfully created"
    click_on "Back"
  end

  test "updating a Intellectual property" do
    visit intellectual_properties_url
    click_on "Edit", match: :first

    fill_in "Creation", with: @intellectual_property.creation
    fill_in "Description", with: @intellectual_property.description
    fill_in "Institution", with: @intellectual_property.institution
    fill_in "Keywords", with: @intellectual_property.keywords
    fill_in "Publication year", with: @intellectual_property.publication_year
    fill_in "Registration year", with: @intellectual_property.registration_year
    click_on "Update Intellectual property"

    assert_text "Intellectual property was successfully updated"
    click_on "Back"
  end

  test "destroying a Intellectual property" do
    visit intellectual_properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intellectual property was successfully destroyed"
  end
end
