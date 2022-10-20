require "application_system_test_case"

class GroupBillsTest < ApplicationSystemTestCase
  setup do
    @group_bill = group_bills(:one)
  end

  test "visiting the index" do
    visit group_bills_url
    assert_selector "h1", text: "Group bills"
  end

  test "should create group bill" do
    visit group_bills_url
    click_on "New group bill"

    click_on "Create Group bill"

    assert_text "Group bill was successfully created"
    click_on "Back"
  end

  test "should update Group bill" do
    visit group_bill_url(@group_bill)
    click_on "Edit this group bill", match: :first

    click_on "Update Group bill"

    assert_text "Group bill was successfully updated"
    click_on "Back"
  end

  test "should destroy Group bill" do
    visit group_bill_url(@group_bill)
    click_on "Destroy this group bill", match: :first

    assert_text "Group bill was successfully destroyed"
  end
end
