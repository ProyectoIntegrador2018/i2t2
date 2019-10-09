require 'test_helper'

class IdtiAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idti_area = idti_areas(:one)
  end

  test "should get index" do
    get idti_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_idti_area_url
    assert_response :success
  end

  test "should create idti_area" do
    assert_difference('IdtiArea.count') do
      post idti_areas_url, params: { idti_area: { center_id: @idti_area.center_id, name: @idti_area.name } }
    end

    assert_redirected_to idti_area_url(IdtiArea.last)
  end

  test "should show idti_area" do
    get idti_area_url(@idti_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_idti_area_url(@idti_area)
    assert_response :success
  end

  test "should update idti_area" do
    patch idti_area_url(@idti_area), params: { idti_area: { center_id: @idti_area.center_id, name: @idti_area.name } }
    assert_redirected_to idti_area_url(@idti_area)
  end

  test "should destroy idti_area" do
    assert_difference('IdtiArea.count', -1) do
      delete idti_area_url(@idti_area)
    end

    assert_redirected_to idti_areas_url
  end
end
