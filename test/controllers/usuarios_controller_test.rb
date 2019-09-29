require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get usuarios_inicio_url
    assert_response :success
  end

end
