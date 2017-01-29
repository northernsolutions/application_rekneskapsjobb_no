require 'test_helper'

class LetTheJobFindYouControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get let_the_job_find_you_index_url
    assert_response :success
  end

end
