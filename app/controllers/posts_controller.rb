class PostsController < ApplicationController
  skip_before_filter :authenticate_admin!, only: [:show]

  def show
    @post = Post.find(params[:id])
  end
end
