require 'test_helper'

class LegalPeopleControllerTest < ActionController::TestCase
  setup do
    @legal_person = legal_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legal_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legal_person" do
    assert_difference('LegalPerson.count') do
      post :create, legal_person: {  }
    end

    assert_redirected_to legal_person_path(assigns(:legal_person))
  end

  test "should show legal_person" do
    get :show, id: @legal_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legal_person
    assert_response :success
  end

  test "should update legal_person" do
    patch :update, id: @legal_person, legal_person: {  }
    assert_redirected_to legal_person_path(assigns(:legal_person))
  end

  test "should destroy legal_person" do
    assert_difference('LegalPerson.count', -1) do
      delete :destroy, id: @legal_person
    end

    assert_redirected_to legal_people_path
  end
end
