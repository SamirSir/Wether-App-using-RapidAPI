require 'test_helper'

class WetherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wether_index_url
    assert_response :success
  end

  test "should get search" do
    get wether_search_url
    assert_response :success
  end

end
