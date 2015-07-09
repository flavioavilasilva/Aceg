require 'test_helper'

class EnderecoOfertaVoluntariadoControllerTest < ActionController::TestCase
  setup do
    @endereco_oferta_voluntariado = endereco_oferta_voluntariado(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:endereco_oferta_voluntariado)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create endereco_oferta_voluntariado" do
    assert_difference('EnderecoOfertaVoluntariado.count') do
      post :create, endereco_oferta_voluntariado: { cep: @endereco_oferta_voluntariado.cep, cidade_id: @endereco_oferta_voluntariado.cidade_id, estado_id: @endereco_oferta_voluntariado.estado_id, numero: @endereco_oferta_voluntariado.numero, oferta_voluntariado_id: @endereco_oferta_voluntariado.oferta_voluntariado_id, rua: @endereco_oferta_voluntariado.rua }
    end

    assert_redirected_to endereco_oferta_voluntariado_path(assigns(:endereco_oferta_voluntariado))
  end

  test "should show endereco_oferta_voluntariado" do
    get :show, id: @endereco_oferta_voluntariado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @endereco_oferta_voluntariado
    assert_response :success
  end

  test "should update endereco_oferta_voluntariado" do
    put :update, id: @endereco_oferta_voluntariado, endereco_oferta_voluntariado: { cep: @endereco_oferta_voluntariado.cep, cidade_id: @endereco_oferta_voluntariado.cidade_id, estado_id: @endereco_oferta_voluntariado.estado_id, numero: @endereco_oferta_voluntariado.numero, oferta_voluntariado_id: @endereco_oferta_voluntariado.oferta_voluntariado_id, rua: @endereco_oferta_voluntariado.rua }
    assert_redirected_to endereco_oferta_voluntariado_path(assigns(:endereco_oferta_voluntariado))
  end

  test "should destroy endereco_oferta_voluntariado" do
    assert_difference('EnderecoOfertaVoluntariado.count', -1) do
      delete :destroy, id: @endereco_oferta_voluntariado
    end

    assert_redirected_to endereco_oferta_voluntariado_index_path
  end
end
