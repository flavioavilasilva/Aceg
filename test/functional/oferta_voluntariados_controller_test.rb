require 'test_helper'

class OfertaVoluntariadosControllerTest < ActionController::TestCase
  setup do
    @oferta_voluntariado = oferta_voluntariados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oferta_voluntariados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oferta_voluntariado" do
    assert_difference('OfertaVoluntariado.count') do
      post :create, oferta_voluntariado: { descricao: @oferta_voluntariado.descricao, status_oferta_voluntariado: @oferta_voluntariado.status_oferta_voluntariado, titulo: @oferta_voluntariado.titulo, usuario_id: @oferta_voluntariado.usuario_id, vigencia_oferta: @oferta_voluntariado.vigencia_oferta }
    end

    assert_redirected_to oferta_voluntariado_path(assigns(:oferta_voluntariado))
  end

  test "should show oferta_voluntariado" do
    get :show, id: @oferta_voluntariado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oferta_voluntariado
    assert_response :success
  end

  test "should update oferta_voluntariado" do
    put :update, id: @oferta_voluntariado, oferta_voluntariado: { descricao: @oferta_voluntariado.descricao, status_oferta_voluntariado: @oferta_voluntariado.status_oferta_voluntariado, titulo: @oferta_voluntariado.titulo, usuario_id: @oferta_voluntariado.usuario_id, vigencia_oferta: @oferta_voluntariado.vigencia_oferta }
    assert_redirected_to oferta_voluntariado_path(assigns(:oferta_voluntariado))
  end

  test "should destroy oferta_voluntariado" do
    assert_difference('OfertaVoluntariado.count', -1) do
      delete :destroy, id: @oferta_voluntariado
    end

    assert_redirected_to oferta_voluntariados_path
  end
end
