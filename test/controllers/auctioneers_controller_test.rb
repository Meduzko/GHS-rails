require 'test_helper'

class AuctioneersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auctioneers_index_url
    assert_response :success
  end

end
