require "test_helper"

class StorageItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storage_item = storage_items(:one)
    @place = places(:one)
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
      post place_storage_items_url(@place), params: { storage_item: { body: @storage_item.body, title: @storage_item.title } }
    end

    assert_redirected_to place_url(@place)
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
      delete place_storage_item_url(@place, @storage_item)
    end

    assert_redirected_to place_url(@place)
  end
end
