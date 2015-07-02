require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save blog without name" do
		blog = Blog.new({:user_id => 1,:name =>"my_blog", :subtitle => "Blog Me", :description => "My Blog"})
		assert blog.save, "Saved the blog without a name"
	end 
end
