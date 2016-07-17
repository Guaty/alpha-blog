require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  
  def setup
    @category = Category.create(name: "mothra")
  end
  
  test "should get categroies index" do
    get :index
    assert_response :success
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should get show" do
    get(:show, { 'id' => @category.id })
    assert_response :success
  end
end