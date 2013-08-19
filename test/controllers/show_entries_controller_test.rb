require 'test_helper'

class ShowEntriesControllerTest < ActionController::TestCase
  setup do
    @show_entry = show_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:show_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create show_entry" do
    assert_difference('ShowEntry.count') do
      post :create, show_entry: { dog_id: @show_entry.dog_id, entry_fee: @show_entry.entry_fee, handling_fee: @show_entry.handling_fee, points: @show_entry.points, show_id: @show_entry.show_id, title: @show_entry.title }
    end

    assert_redirected_to show_entry_path(assigns(:show_entry))
  end

  test "should show show_entry" do
    get :show, id: @show_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @show_entry
    assert_response :success
  end

  test "should update show_entry" do
    patch :update, id: @show_entry, show_entry: { dog_id: @show_entry.dog_id, entry_fee: @show_entry.entry_fee, handling_fee: @show_entry.handling_fee, points: @show_entry.points, show_id: @show_entry.show_id, title: @show_entry.title }
    assert_redirected_to show_entry_path(assigns(:show_entry))
  end

  test "should destroy show_entry" do
    assert_difference('ShowEntry.count', -1) do
      delete :destroy, id: @show_entry
    end

    assert_redirected_to show_entries_path
  end
end
