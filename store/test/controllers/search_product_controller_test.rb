require 'test_helper'

class SearchProductControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get search_product_search_url
    assert_response :success
  end

end
