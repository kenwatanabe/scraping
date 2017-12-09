require 'test_helper'

class AmazonApiDataControllerTest < ActionController::TestCase
  setup do
    @amazon_api_datum = amazon_api_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amazon_api_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amazon_api_datum" do
    assert_difference('AmazonApiDatum.count') do
      post :create, amazon_api_datum: { id_type: @amazon_api_datum.id_type, item_id: @amazon_api_datum.item_id, main_image_url: @amazon_api_datum.main_image_url }
    end

    assert_redirected_to amazon_api_datum_path(assigns(:amazon_api_datum))
  end

  test "should show amazon_api_datum" do
    get :show, id: @amazon_api_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amazon_api_datum
    assert_response :success
  end

  test "should update amazon_api_datum" do
    patch :update, id: @amazon_api_datum, amazon_api_datum: { id_type: @amazon_api_datum.id_type, item_id: @amazon_api_datum.item_id, main_image_url: @amazon_api_datum.main_image_url }
    assert_redirected_to amazon_api_datum_path(assigns(:amazon_api_datum))
  end

  test "should destroy amazon_api_datum" do
    assert_difference('AmazonApiDatum.count', -1) do
      delete :destroy, id: @amazon_api_datum
    end

    assert_redirected_to amazon_api_data_path
  end
end
