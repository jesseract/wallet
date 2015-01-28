require 'test_helper'

class BankRegistersControllerTest < ActionController::TestCase
  setup do
    @bank_register = bank_registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bank_registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bank_register" do
    assert_difference('BankRegister.count') do
      post :create, bank_register: { total: @bank_register.total, transaction_amount: @bank_register.transaction_amount, transaction_name: @bank_register.transaction_name }
    end

    assert_redirected_to bank_register_path(assigns(:bank_register))
  end

  test "should show bank_register" do
    get :show, id: @bank_register
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bank_register
    assert_response :success
  end

  test "should update bank_register" do
    patch :update, id: @bank_register, bank_register: { total: @bank_register.total, transaction_amount: @bank_register.transaction_amount, transaction_name: @bank_register.transaction_name }
    assert_redirected_to bank_register_path(assigns(:bank_register))
  end

  test "should destroy bank_register" do
    assert_difference('BankRegister.count', -1) do
      delete :destroy, id: @bank_register
    end

    assert_redirected_to bank_registers_path
  end
end
