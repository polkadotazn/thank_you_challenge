require 'test_helper'

class TyNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ty_note = ty_notes(:one)
  end

  test "should get index" do
    get ty_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_ty_note_url
    assert_response :success
  end

  test "should create ty_note" do
    assert_difference('TyNote.count') do
      post ty_notes_url, params: { ty_note: { body: @ty_note.body, first_name: @ty_note.first_name, gifter_id: @ty_note.gifter_id, last_name: @ty_note.last_name, subject: @ty_note.subject } }
    end

    assert_redirected_to ty_note_url(TyNote.last)
  end

  test "should show ty_note" do
    get ty_note_url(@ty_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_ty_note_url(@ty_note)
    assert_response :success
  end

  test "should update ty_note" do
    patch ty_note_url(@ty_note), params: { ty_note: { body: @ty_note.body, first_name: @ty_note.first_name, gifter_id: @ty_note.gifter_id, last_name: @ty_note.last_name, subject: @ty_note.subject } }
    assert_redirected_to ty_note_url(@ty_note)
  end

  test "should destroy ty_note" do
    assert_difference('TyNote.count', -1) do
      delete ty_note_url(@ty_note)
    end

    assert_redirected_to ty_notes_url
  end
end
