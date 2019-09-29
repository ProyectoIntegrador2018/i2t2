# frozen_string_literal: true

require 'test_helper'

# Unit tests for UsuariosController.
class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test 'should get inicio' do
    get usuarios_inicio_url
    assert_response :success
  end
end
