require 'test_helper'

class EntrepreneursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entrepreneur = entrepreneurs(:one)
  end

  test "should get index" do
    get entrepreneurs_url
    assert_response :success
  end

  test "should get new" do
    get new_entrepreneur_url
    assert_response :success
  end

  test "should create entrepreneur" do
    assert_difference('Entrepreneur.count') do
      post entrepreneurs_url, params: { entrepreneur: { organization: @entrepreneur.organization } }
    end

    assert_redirected_to entrepreneur_url(Entrepreneur.last)
  end

  test "should show entrepreneur" do
    get entrepreneur_url(@entrepreneur)
    assert_response :success
  end

  test "should get edit" do
    get edit_entrepreneur_url(@entrepreneur)
    assert_response :success
  end

  test "should update entrepreneur" do
    patch entrepreneur_url(@entrepreneur), params: { entrepreneur: { organization: @entrepreneur.organization } }
    assert_redirected_to entrepreneur_url(@entrepreneur)
  end

  test "should destroy entrepreneur" do
    assert_difference('Entrepreneur.count', -1) do
      delete entrepreneur_url(@entrepreneur)
    end

    assert_redirected_to entrepreneurs_url
  end
end
