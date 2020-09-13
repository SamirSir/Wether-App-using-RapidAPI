require 'test_helper'

class Covid19ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get covid19_index_url
    assert_response :success
  end

  test "should get country" do
    get covid19_country_url
    assert_response :success
  end

end
