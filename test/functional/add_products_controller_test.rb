require 'test_helper'

class AddProductsControllerTest < ActionController::TestCase
  setup do
    @add_product = add_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_product" do
    assert_difference('AddProduct.count') do
      post :create, add_product: { details: @add_product.details, name: @add_product.name, price: @add_product.price }
    end

    assert_redirected_to add_product_path(assigns(:add_product))
  end

  test "should show add_product" do
    get :show, id: @add_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_product
    assert_response :success
  end

  test "should update add_product" do
    put :update, id: @add_product, add_product: { details: @add_product.details, name: @add_product.name, price: @add_product.price }
    assert_redirected_to add_product_path(assigns(:add_product))
  end

  test "should destroy add_product" do
    assert_difference('AddProduct.count', -1) do
      delete :destroy, id: @add_product
    end

    assert_redirected_to add_products_path
  end
end
