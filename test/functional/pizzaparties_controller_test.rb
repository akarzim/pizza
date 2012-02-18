require 'test_helper'

class PizzapartiesControllerTest < ActionController::TestCase
  setup do
    @pizzaparty = pizzaparties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizzaparties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizzaparty" do
    assert_difference('Pizzaparty.count') do
      post :create, pizzaparty: @pizzaparty.attributes
    end

    assert_redirected_to pizzaparty_path(assigns(:pizzaparty))
  end

  test "should show pizzaparty" do
    get :show, id: @pizzaparty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pizzaparty
    assert_response :success
  end

  test "should update pizzaparty" do
    put :update, id: @pizzaparty, pizzaparty: @pizzaparty.attributes
    assert_redirected_to pizzaparty_path(assigns(:pizzaparty))
  end

  test "should destroy pizzaparty" do
    assert_difference('Pizzaparty.count', -1) do
      delete :destroy, id: @pizzaparty
    end

    assert_redirected_to pizzaparties_path
  end
end
