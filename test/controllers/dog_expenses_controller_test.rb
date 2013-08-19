require 'test_helper'

class DogExpensesControllerTest < ActionController::TestCase
  setup do
    @dog_expense = dog_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dog_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dog_expense" do
    assert_difference('DogExpense.count') do
      post :create, dog_expense: { amount: @dog_expense.amount, charge_date: @dog_expense.charge_date, charge_id: @dog_expense.charge_id, dog_id: @dog_expense.dog_id, note: @dog_expense.note }
    end

    assert_redirected_to dog_expense_path(assigns(:dog_expense))
  end

  test "should show dog_expense" do
    get :show, id: @dog_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dog_expense
    assert_response :success
  end

  test "should update dog_expense" do
    patch :update, id: @dog_expense, dog_expense: { amount: @dog_expense.amount, charge_date: @dog_expense.charge_date, charge_id: @dog_expense.charge_id, dog_id: @dog_expense.dog_id, note: @dog_expense.note }
    assert_redirected_to dog_expense_path(assigns(:dog_expense))
  end

  test "should destroy dog_expense" do
    assert_difference('DogExpense.count', -1) do
      delete :destroy, id: @dog_expense
    end

    assert_redirected_to dog_expenses_path
  end
end
