class PostsController < ApplicationController
  def show
    @post = Post.find_by(params[:slug])
  end
end
