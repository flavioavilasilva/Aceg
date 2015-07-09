require 'test_helper'

class AdocaoAnimaisControllerTest < ActionController::TestCase
  setup do
    @adocao_animal = adocao_animais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adocao_animais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adocao_animal" do
    assert_difference('AdocaoAnimal.count') do
      post :create, adocao_animal: { adotando_animal_id: @adocao_animal.adotando_animal_id, animal_id: @adocao_animal.animal_id, doador_animal_id: @adocao_animal.doador_animal_id }
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
    put :update, id: @adocao_animal, adocao_animal: { adotando_animal_id: @adocao_animal.adotando_animal_id, animal_id: @adocao_animal.animal_id, doador_animal_id: @adocao_animal.doador_animal_id }
    assert_redirected_to adocao_animal_path(assigns(:adocao_animal))
  end

  test "should destroy adocao_animal" do
    assert_difference('AdocaoAnimal.count', -1) do
      delete :destroy, id: @adocao_animal
    end

    assert_redirected_to adocao_animais_path
  end
end
