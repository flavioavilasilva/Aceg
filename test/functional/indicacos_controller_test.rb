require 'test_helper'

class IndicacosControllerTest < ActionController::TestCase
  setup do
    @indicaco = indicacos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicacos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicaco" do
    assert_difference('Indicaco.count') do
      post :create, indicaco: { comentario: @indicaco.comentario, estabelecimento_id: @indicaco.estabelecimento_id, nota: @indicaco.nota, usuario_id: @indicaco.usuario_id }
    end

    assert_redirected_to indicaco_path(assigns(:indicaco))
  end

  test "should show indicaco" do
    get :show, id: @indicaco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicaco
    assert_response :success
  end

  test "should update indicaco" do
    put :update, id: @indicaco, indicaco: { comentario: @indicaco.comentario, estabelecimento_id: @indicaco.estabelecimento_id, nota: @indicaco.nota, usuario_id: @indicaco.usuario_id }
    assert_redirected_to indicaco_path(assigns(:indicaco))
  end

  test "should destroy indicaco" do
    assert_difference('Indicaco.count', -1) do
      delete :destroy, id: @indicaco
    end

    assert_redirected_to indicacos_path
  end
end
