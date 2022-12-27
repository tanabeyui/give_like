require "test_helper"

class Public::ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_items_index_url
    assert_response :success
  end

  test "should get search" do
    get public_items_search_url
    assert_response :success
  end

  test "should get show" do
    get public_items_show_url
    assert_response :success
  end
end
