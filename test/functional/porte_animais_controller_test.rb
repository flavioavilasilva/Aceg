require 'test_helper'

class PorteAnimaisControllerTest < ActionController::TestCase
  setup do
    @porte_animal = porte_animais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:porte_animais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create porte_animal" do
    assert_difference('PorteAnimal.count') do
      post :create, porte_animal: { porte_animal: @porte_animal.porte_animal }
    end

    assert_redirected_to porte_animal_path(assigns(:porte_animal))
  end

  test "should show porte_animal" do
    get :show, id: @porte_animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @porte_animal
    assert_response :success
  end

  test "should update porte_animal" do
    put :update, id: @porte_animal, porte_animal: { porte_animal: @porte_animal.porte_animal }
    assert_redirected_to porte_animal_path(assigns(:porte_animal))
  end

  test "should destroy porte_animal" do
    assert_difference('PorteAnimal.count', -1) do
      delete :destroy, id: @porte_animal
    end

    assert_redirected_to porte_animais_path
  end
end
