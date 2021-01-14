require 'test_helper'

class ExerciseSetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get exercise_sets_new_url
    assert_response :success
  end

  test "should get create" do
    get exercise_sets_create_url
    assert_response :success
  end

  test "should get edit" do
    get exercise_sets_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get exercise_sets_destroy_url
    assert_response :success
  end

  test "should get update" do
    get exercise_sets_update_url
    assert_response :success
  end

end
