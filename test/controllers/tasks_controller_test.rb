require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  include Rack::Test::Methods

  test "should create new task" do
    assert_equal Task.count, 0

    post '/tasks', {task: {description: 'description_1', status: false}}

    assert_equal Task.count, 1
  end
end