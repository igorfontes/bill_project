require "test_helper"

class BillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get bills_url, as: :json
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post bills_url, params: { bill: { customerId: @bill.customerId, description: @bill.description, dueDate: @bill.dueDate, emissionDate: @bill.emissionDate, paymentDate: @bill.paymentDate, paymentStatus: @bill.paymentStatus, totalAmount: @bill.totalAmount } }, as: :json
    end

    assert_response 201
  end

  test "should show bill" do
    get bill_url(@bill), as: :json
    assert_response :success
  end

  test "should update bill" do
    patch bill_url(@bill), params: { bill: { customerId: @bill.customerId, description: @bill.description, dueDate: @bill.dueDate, emissionDate: @bill.emissionDate, paymentDate: @bill.paymentDate, paymentStatus: @bill.paymentStatus, totalAmount: @bill.totalAmount } }, as: :json
    assert_response 200
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete bill_url(@bill), as: :json
    end

    assert_response 204
  end
end
