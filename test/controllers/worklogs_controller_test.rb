require 'test_helper'

class WorklogsControllerTest < ActionController::TestCase
  setup do
    @worklog = worklogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worklogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worklog" do
    assert_difference('Worklog.count') do
      post :create, worklog: { date: @worklog.date, location: @worklog.location, notes: @worklog.notes, private: @worklog.private, public: @worklog.public }
    end

    assert_redirected_to worklog_path(assigns(:worklog))
  end

  test "should show worklog" do
    get :show, id: @worklog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worklog
    assert_response :success
  end

  test "should update worklog" do
    patch :update, id: @worklog, worklog: { date: @worklog.date, location: @worklog.location, notes: @worklog.notes, private: @worklog.private, public: @worklog.public }
    assert_redirected_to worklog_path(assigns(:worklog))
  end

  test "should destroy worklog" do
    assert_difference('Worklog.count', -1) do
      delete :destroy, id: @worklog
    end

    assert_redirected_to worklogs_path
  end
end
