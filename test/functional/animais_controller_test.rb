require 'test_helper'

class AnimaisControllerTest < ActionController::TestCase
  setup do
    @animal = animais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post :create, animal: { cidade_id: @animal.cidade_id, cor_id: @animal.cor_id, descricao_animal: @animal.descricao_animal, doador_animal_id: @animal.doador_animal_id, estado_id: @animal.estado_id, genero_id: @animal.genero_id, idade_id: @animal.idade_id, nome: @animal.nome, numero_rua: @animal.numero_rua, peso: @animal.peso, porte_animal_id: @animal.porte_animal_id, prioridade_adocao_id: @animal.prioridade_adocao_id, rua: @animal.rua, status_animal_id: @animal.status_animal_id, tipo_animal_id: @animal.tipo_animal_id }
    end

    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should show animal" do
    get :show, id: @animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animal
    assert_response :success
  end

  test "should update animal" do
    put :update, id: @animal, animal: { cidade_id: @animal.cidade_id, cor_id: @animal.cor_id, descricao_animal: @animal.descricao_animal, doador_animal_id: @animal.doador_animal_id, estado_id: @animal.estado_id, genero_id: @animal.genero_id, idade_id: @animal.idade_id, nome: @animal.nome, numero_rua: @animal.numero_rua, peso: @animal.peso, porte_animal_id: @animal.porte_animal_id, prioridade_adocao_id: @animal.prioridade_adocao_id, rua: @animal.rua, status_animal_id: @animal.status_animal_id, tipo_animal_id: @animal.tipo_animal_id }
    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete :destroy, id: @animal
    end

    assert_redirected_to animais_path
  end
end
