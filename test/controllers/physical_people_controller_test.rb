require 'test_helper'

class PhysicalPeopleControllerTest < ActionController::TestCase
  setup do
    @physical_person = physical_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:physical_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create physical_person" do
    assert_difference('PhysicalPerson.count') do
      post :create, physical_person: {  }
    end

    assert_redirected_to physical_person_path(assigns(:physical_person))
  end

  test "should show physical_person" do
    get :show, id: @physical_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @physical_person
    assert_response :success
  end

  test "should update physical_person" do
    patch :update, id: @physical_person, physical_person: {  }
    assert_redirected_to physical_person_path(assigns(:physical_person))
  end

  test "should destroy physical_person" do
    assert_difference('PhysicalPerson.count', -1) do
      delete :destroy, id: @physical_person
    end

    assert_redirected_to physical_people_path
  end
end
