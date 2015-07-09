require 'test_helper'

class ComentarioArtigosControllerTest < ActionController::TestCase
  setup do
    @comentario_artigo = comentario_artigos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comentario_artigos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comentario_artigo" do
    assert_difference('ComentarioArtigo.count') do
      post :create, comentario_artigo: { autor: @comentario_artigo.autor, conteudo: @comentario_artigo.conteudo }
    end

    assert_redirected_to comentario_artigo_path(assigns(:comentario_artigo))
  end

  test "should show comentario_artigo" do
    get :show, id: @comentario_artigo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comentario_artigo
    assert_response :success
  end

  test "should update comentario_artigo" do
    put :update, id: @comentario_artigo, comentario_artigo: { autor: @comentario_artigo.autor, conteudo: @comentario_artigo.conteudo }
    assert_redirected_to comentario_artigo_path(assigns(:comentario_artigo))
  end

  test "should destroy comentario_artigo" do
    assert_difference('ComentarioArtigo.count', -1) do
      delete :destroy, id: @comentario_artigo
    end

    assert_redirected_to comentario_artigos_path
  end
end
