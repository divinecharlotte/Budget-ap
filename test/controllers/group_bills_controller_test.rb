require 'test_helper'

class GroupBillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_bill = group_bills(:one)
  end

  test 'should get index' do
    get group_bills_url
    assert_response :success
  end

  test 'should get new' do
    get new_group_bill_url
    assert_response :success
  end

  test 'should create group_bill' do
    assert_difference('GroupBill.count') do
      post group_bills_url, params: { group_bill: {} }
    end

    assert_redirected_to group_bill_url(GroupBill.last)
  end

  test 'should show group_bill' do
    get group_bill_url(@group_bill)
    assert_response :success
  end

  test 'should get edit' do
    get edit_group_bill_url(@group_bill)
    assert_response :success
  end

  test 'should update group_bill' do
    patch group_bill_url(@group_bill), params: { group_bill: {} }
    assert_redirected_to group_bill_url(@group_bill)
  end

  test 'should destroy group_bill' do
    assert_difference('GroupBill.count', -1) do
      delete group_bill_url(@group_bill)
    end

    assert_redirected_to group_bills_url
  end
end
