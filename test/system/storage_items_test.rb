require "application_system_test_case"

class StorageItemsTest < ApplicationSystemTestCase
  setup do
    @storage_item = storage_items(:one)
  end

  test "visiting the index" do
    visit storage_items_url
    assert_selector "h1", text: "Storage items"
  end

  test "should create storage item" do
    visit storage_items_url
    click_on "New storage item"

    fill_in "Body", with: @storage_item.body
    fill_in "Title", with: @storage_item.title
    click_on "Create Storage item"

    assert_text "Storage item was successfully created"
    click_on "Back"
  end

  test "should update Storage item" do
    visit storage_item_url(@storage_item)
    click_on "Edit this storage item", match: :first

    fill_in "Body", with: @storage_item.body
    fill_in "Title", with: @storage_item.title
    click_on "Update Storage item"

    assert_text "Storage item was successfully updated"
    click_on "Back"
  end

  test "should destroy Storage item" do
    visit storage_item_url(@storage_item)
    click_on "Destroy this storage item", match: :first

    assert_text "Storage item was successfully destroyed"
  end
end
