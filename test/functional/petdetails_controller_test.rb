require 'test_helper'

class PetdetailsControllerTest < ActionController::TestCase
  setup do
    @petdetail = petdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:petdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create petdetail" do
    assert_difference('Petdetail.count') do
      post :create, petdetail: { age: @petdetail.age, appointment_id: @petdetail.appointment_id, breed: @petdetail.breed, lastvisitdate: @petdetail.lastvisitdate, nameofpet: @petdetail.nameofpet, typeofpet: @petdetail.typeofpet, weight: @petdetail.weight }
    end

    assert_redirected_to petdetail_path(assigns(:petdetail))
  end

  test "should show petdetail" do
    get :show, id: @petdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @petdetail
    assert_response :success
  end

  test "should update petdetail" do
    put :update, id: @petdetail, petdetail: { age: @petdetail.age, appointment_id: @petdetail.appointment_id, breed: @petdetail.breed, lastvisitdate: @petdetail.lastvisitdate, nameofpet: @petdetail.nameofpet, typeofpet: @petdetail.typeofpet, weight: @petdetail.weight }
    assert_redirected_to petdetail_path(assigns(:petdetail))
  end

  test "should destroy petdetail" do
    assert_difference('Petdetail.count', -1) do
      delete :destroy, id: @petdetail
    end

    assert_redirected_to petdetails_path
  end
end
