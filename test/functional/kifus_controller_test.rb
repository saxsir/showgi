require 'test_helper'

class KifusControllerTest < ActionController::TestCase
  setup do
    @kifu = kifus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kifus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kifu" do
    assert_difference('Kifu.count') do
      post :create, :kifu => { :file_url => @kifu.file_url, :owner_id => @kifu.owner_id, :title => @kifu.title }
    end

    assert_redirected_to kifu_path(assigns(:kifu))
  end

  test "should show kifu" do
    get :show, :id => @kifu
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kifu
    assert_response :success
  end

  test "should update kifu" do
    put :update, :id => @kifu, :kifu => { :file_url => @kifu.file_url, :owner_id => @kifu.owner_id, :title => @kifu.title }
    assert_redirected_to kifu_path(assigns(:kifu))
  end

  test "should destroy kifu" do
    assert_difference('Kifu.count', -1) do
      delete :destroy, :id => @kifu
    end

    assert_redirected_to kifus_path
  end
end
