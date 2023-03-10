require "test_helper"

class StorageItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storage_item = storage_items(:one)
  end

  test "should get index" do
    get storage_items_url
    assert_response :success
  end

  test "should get new" do
    get new_storage_item_url
    assert_response :success
  end

  test "should create storage_item" do
    assert_difference("StorageItem.count") do
      post storage_items_url, params: { storage_item: { body: @storage_item.body, title: @storage_item.title } }
    end

    assert_redirected_to storage_item_url(StorageItem.last)
  end

  test "should show storage_item" do
    get storage_item_url(@storage_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_storage_item_url(@storage_item)
    assert_response :success
  end

  test "should update storage_item" do
    patch storage_item_url(@storage_item), params: { storage_item: { body: @storage_item.body, title: @storage_item.title } }
    assert_redirected_to storage_item_url(@storage_item)
  end

  test "should destroy storage_item" do
    assert_difference("StorageItem.count", -1) do
      delete storage_item_url(@storage_item)
    end

    assert_redirected_to storage_items_url
  end
end
