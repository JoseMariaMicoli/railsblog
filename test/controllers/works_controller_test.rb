require 'test_helper'

class WorksControllerTest < ActionController::TestCase
  setup do
    @work = works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work" do
    assert_difference('Work.count') do
      post :create, work: { description: @work.description, image_content_type: @work.image_content_type, image_file_name: @work.image_file_name, image_file_size: @work.image_file_size, image_updated_at: @work.image_updated_at, title: @work.title }
    end

    assert_redirected_to work_path(assigns(:work))
  end

  test "should show work" do
    get :show, id: @work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work
    assert_response :success
  end

  test "should update work" do
    patch :update, id: @work, work: { description: @work.description, image_content_type: @work.image_content_type, image_file_name: @work.image_file_name, image_file_size: @work.image_file_size, image_updated_at: @work.image_updated_at, title: @work.title }
    assert_redirected_to work_path(assigns(:work))
  end

  test "should destroy work" do
    assert_difference('Work.count', -1) do
      delete :destroy, id: @work
    end

    assert_redirected_to works_path
  end
end
