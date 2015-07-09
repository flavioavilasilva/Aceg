require 'test_helper'

class AdocaoAnimalsControllerTest < ActionController::TestCase
  setup do
    @adocao_animal = adocao_animals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adocao_animals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adocao_animal" do
    assert_difference('AdocaoAnimal.count') do
      post :create, adocao_animal: { adotando_id: @adocao_animal.adotando_id, animal_id: @adocao_animal.animal_id, confirmacao_adotando: @adocao_animal.confirmacao_adotando, confirmacao_doador: @adocao_animal.confirmacao_doador, data_adocao: @adocao_animal.data_adocao, doador_id: @adocao_animal.doador_id }
    end

    assert_redirected_to adocao_animal_path(assigns(:adocao_animal))
  end

  test "should show adocao_animal" do
    get :show, id: @adocao_animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adocao_animal
    assert_response :success
  end

  test "should update adocao_animal" do
    put :update, id: @adocao_animal, adocao_animal: { adotando_id: @adocao_animal.adotando_id, animal_id: @adocao_animal.animal_id, confirmacao_adotando: @adocao_animal.confirmacao_adotando, confirmacao_doador: @adocao_animal.confirmacao_doador, data_adocao: @adocao_animal.data_adocao, doador_id: @adocao_animal.doador_id }
    assert_redirected_to adocao_animal_path(assigns(:adocao_animal))
  end

  test "should destroy adocao_animal" do
    assert_difference('AdocaoAnimal.count', -1) do
      delete :destroy, id: @adocao_animal
    end

    assert_redirected_to adocao_animals_path
  end
end
