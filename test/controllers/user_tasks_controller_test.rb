require "test_helper"

class UserTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get user_tasks_controller_url
    assert_response :success
  end
end
