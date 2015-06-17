class PostsController < ApplicationController
  def show
    @post = Post.find_by(slug: params[:id])
  end
end
