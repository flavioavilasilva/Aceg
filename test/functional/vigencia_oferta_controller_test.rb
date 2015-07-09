require 'test_helper'

class VigenciaOfertaControllerTest < ActionController::TestCase
  setup do
    @vigencia_ofertum = vigencia_oferta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vigencia_oferta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vigencia_ofertum" do
    assert_difference('VigenciaOfertum.count') do
      post :create, vigencia_ofertum: { vigencia: @vigencia_ofertum.vigencia }
    end

    assert_redirected_to vigencia_ofertum_path(assigns(:vigencia_ofertum))
  end

  test "should show vigencia_ofertum" do
    get :show, id: @vigencia_ofertum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vigencia_ofertum
    assert_response :success
  end

  test "should update vigencia_ofertum" do
    put :update, id: @vigencia_ofertum, vigencia_ofertum: { vigencia: @vigencia_ofertum.vigencia }
    assert_redirected_to vigencia_ofertum_path(assigns(:vigencia_ofertum))
  end

  test "should destroy vigencia_ofertum" do
    assert_difference('VigenciaOfertum.count', -1) do
      delete :destroy, id: @vigencia_ofertum
    end

    assert_redirected_to vigencia_oferta_path
  end
end
