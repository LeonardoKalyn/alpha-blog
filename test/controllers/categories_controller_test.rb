require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @category = Category.create(name: "sport")
  end
  
  test "should get categoriesindex" do
    get categories_path
    assert_response :success
  end
  
  test "should get new" do
    get new_category_path
    assert_response :success
  end
  
  test "should get show" do
    get category_path(@category)
    assert_response :success
  end
end