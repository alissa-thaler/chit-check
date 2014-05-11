require 'test_helper'

class TexttocorrectsControllerTest < ActionController::TestCase
  setup do
    @texttocorrect = texttocorrects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:texttocorrects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create texttocorrect" do
    assert_difference('Texttocorrect.count') do
      post :create, texttocorrect: { description: @texttocorrect.description, duedate: @texttocorrect.duedate, language: @texttocorrect.language }
    end

    assert_redirected_to texttocorrect_path(assigns(:texttocorrect))
  end

  test "should show texttocorrect" do
    get :show, id: @texttocorrect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @texttocorrect
    assert_response :success
  end

  test "should update texttocorrect" do
    patch :update, id: @texttocorrect, texttocorrect: { description: @texttocorrect.description, duedate: @texttocorrect.duedate, language: @texttocorrect.language }
    assert_redirected_to texttocorrect_path(assigns(:texttocorrect))
  end

  test "should destroy texttocorrect" do
    assert_difference('Texttocorrect.count', -1) do
      delete :destroy, id: @texttocorrect
    end

    assert_redirected_to texttocorrects_path
  end
end
