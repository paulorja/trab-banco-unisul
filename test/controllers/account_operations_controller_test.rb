require 'test_helper'

class AccountOperationsControllerTest < ActionController::TestCase
  setup do
    @account_operation = account_operations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_operations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_operation" do
    assert_difference('AccountOperation.count') do
      post :create, account_operation: { account_id: @account_operation.account_id, amount: @account_operation.amount, person_id: @account_operation.person_id, tipo: @account_operation.tipo }
    end

    assert_redirected_to account_operation_path(assigns(:account_operation))
  end

  test "should show account_operation" do
    get :show, id: @account_operation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_operation
    assert_response :success
  end

  test "should update account_operation" do
    patch :update, id: @account_operation, account_operation: { account_id: @account_operation.account_id, amount: @account_operation.amount, person_id: @account_operation.person_id, tipo: @account_operation.tipo }
    assert_redirected_to account_operation_path(assigns(:account_operation))
  end

  test "should destroy account_operation" do
    assert_difference('AccountOperation.count', -1) do
      delete :destroy, id: @account_operation
    end

    assert_redirected_to account_operations_path
  end
end
