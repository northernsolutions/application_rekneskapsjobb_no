require 'test_helper'

class ForEmployersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get for_employers_index_url
    assert_response :success
  end

end
