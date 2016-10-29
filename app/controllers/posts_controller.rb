class PostsController < ApplicationController

  # create a post
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    respond_to do |f|
    	if (@post.save)
    		f.html { redirect_to "", notice: "Post creater"}
    	else
    		f.html { redirect_to "", notice: "Post not created"}
    	end	
    end	
  end  

  private
  def post_params #allows certain data to be  passed
  	params.require(:post).permit(:user_id, :content)
  end	


end