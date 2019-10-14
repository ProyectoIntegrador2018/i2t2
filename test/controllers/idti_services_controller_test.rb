# frozen_string_literal: true

require 'test_helper'

class IdtiServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idti_service = idti_services(:one)
  end

  test 'should get index' do
    get idti_services_url
    assert_response :success
  end

  test 'should get new' do
    get new_idti_service_url
    assert_response :success
  end

  test 'should create idti_service' do
    assert_difference('IdtiService.count') do
      post idti_services_url, params: { idti_service: { center_id: @idti_service.center_id, industry: @idti_service.industry, name: @idti_service.name } }
    end

    assert_redirected_to idti_service_url(IdtiService.last)
  end

  test 'should show idti_service' do
    get idti_service_url(@idti_service)
    assert_response :success
  end

  test 'should get edit' do
    get edit_idti_service_url(@idti_service)
    assert_response :success
  end

  test 'should update idti_service' do
    patch idti_service_url(@idti_service), params: { idti_service: { center_id: @idti_service.center_id, industry: @idti_service.industry, name: @idti_service.name } }
    assert_redirected_to idti_service_url(@idti_service)
  end

  test 'should destroy idti_service' do
    assert_difference('IdtiService.count', -1) do
      delete idti_service_url(@idti_service)
    end

    assert_redirected_to idti_services_url
  end
end
