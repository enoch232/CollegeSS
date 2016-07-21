RSpec.describe PostsController do
	describe "GET index" do
		it "should increase the post count" do
			@post_count = Post.all.count
			@post = Post.new
			@post.title = "test"
			@post.save
			@post_count_check = Post.all.count
			@post_count.should == @post_count_check - 1
		end	
	end
end