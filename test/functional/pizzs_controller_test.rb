require 'test_helper'

class PizzsControllerTest < ActionController::TestCase
  setup do
    @pizz = pizzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizz" do
    assert_difference('Pizz.count') do
      post :create, pizz: @pizz.attributes
    end

    assert_redirected_to pizz_path(assigns(:pizz))
  end

  test "should show pizz" do
    get :show, id: @pizz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pizz
    assert_response :success
  end

  test "should update pizz" do
    put :update, id: @pizz, pizz: @pizz.attributes
    assert_redirected_to pizz_path(assigns(:pizz))
  end

  test "should destroy pizz" do
    assert_difference('Pizz.count', -1) do
      delete :destroy, id: @pizz
    end

    assert_redirected_to pizzs_path
  end
end
