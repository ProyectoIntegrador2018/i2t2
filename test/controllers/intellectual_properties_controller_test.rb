require 'test_helper'

class IntellectualPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intellectual_property = intellectual_properties(:one)
  end

  test "should get index" do
    get intellectual_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_intellectual_property_url
    assert_response :success
  end

  test "should create intellectual_property" do
    assert_difference('IntellectualProperty.count') do
      post intellectual_properties_url, params: { intellectual_property: { creation: @intellectual_property.creation, description: @intellectual_property.description, institution: @intellectual_property.institution, keywords: @intellectual_property.keywords, publication_year: @intellectual_property.publication_year, registration_year: @intellectual_property.registration_year } }
    end

    assert_redirected_to intellectual_property_url(IntellectualProperty.last)
  end

  test "should show intellectual_property" do
    get intellectual_property_url(@intellectual_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_intellectual_property_url(@intellectual_property)
    assert_response :success
  end

  test "should update intellectual_property" do
    patch intellectual_property_url(@intellectual_property), params: { intellectual_property: { creation: @intellectual_property.creation, description: @intellectual_property.description, institution: @intellectual_property.institution, keywords: @intellectual_property.keywords, publication_year: @intellectual_property.publication_year, registration_year: @intellectual_property.registration_year } }
    assert_redirected_to intellectual_property_url(@intellectual_property)
  end

  test "should destroy intellectual_property" do
    assert_difference('IntellectualProperty.count', -1) do
      delete intellectual_property_url(@intellectual_property)
    end

    assert_redirected_to intellectual_properties_url
  end
end
