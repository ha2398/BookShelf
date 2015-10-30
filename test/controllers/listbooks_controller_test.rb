require 'test_helper'

class ListbooksControllerTest < ActionController::TestCase
  setup do
    @listbook = listbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listbook" do
    assert_difference('Listbook.count') do
      post :create, listbook: {  }
    end

    assert_redirected_to listbook_path(assigns(:listbook))
  end

  test "should show listbook" do
    get :show, id: @listbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listbook
    assert_response :success
  end

  test "should update listbook" do
    patch :update, id: @listbook, listbook: {  }
    assert_redirected_to listbook_path(assigns(:listbook))
  end

  test "should destroy listbook" do
    assert_difference('Listbook.count', -1) do
      delete :destroy, id: @listbook
    end

    assert_redirected_to listbooks_path
  end
end
