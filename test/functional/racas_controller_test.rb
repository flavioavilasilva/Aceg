require 'test_helper'

class RacasControllerTest < ActionController::TestCase
  setup do
    @raca = racas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:racas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raca" do
    assert_difference('Raca.count') do
      post :create, raca: { raca: @raca.raca }
    end

    assert_redirected_to raca_path(assigns(:raca))
  end

  test "should show raca" do
    get :show, id: @raca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raca
    assert_response :success
  end

  test "should update raca" do
    put :update, id: @raca, raca: { raca: @raca.raca }
    assert_redirected_to raca_path(assigns(:raca))
  end

  test "should destroy raca" do
    assert_difference('Raca.count', -1) do
      delete :destroy, id: @raca
    end

    assert_redirected_to racas_path
  end
end
