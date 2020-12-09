require 'test_helper'

class MidtermControllerTest < ActionDispatch::IntegrationTest
  test "should get exam" do
    get midterm_exam_url
    assert_response :success
  end

end
