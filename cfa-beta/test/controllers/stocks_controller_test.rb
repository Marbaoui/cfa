require 'test_helper'

class StocksControllerTest < ActionDispatch::IntegrationTest
  test "should get pharmacy" do
    get stocks_pharmacy_url
    assert_response :success
  end

  test "should get add_products" do
    get stocks_add_products_url
    assert_response :success
  end

  test "should get update_product" do
    get stocks_update_product_url
    assert_response :success
  end

  test "should get delet_product" do
    get stocks_delet_product_url
    assert_response :success
  end

  test "should get show_products" do
    get stocks_show_products_url
    assert_response :success
  end

end
