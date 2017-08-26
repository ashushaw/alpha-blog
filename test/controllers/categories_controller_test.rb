require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

def setup

@category = Category.create(name: "sports")

end

test "should get categories index" do

get :index

assert_response :success

end

test "should get new" do

get :new

assert_response :success

end

#used for multiple line comment
=begin
test "should get show" do

get(action:show, {'id' => @category.id})
#get :show
assert_response :success

end

=end

end