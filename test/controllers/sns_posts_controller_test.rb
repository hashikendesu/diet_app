require 'test_helper'

class SnsPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sns_posts_index_url
    assert_response :success
  end

end
