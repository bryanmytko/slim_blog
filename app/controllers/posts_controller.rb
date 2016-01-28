class PostsController < ApplicationController
  def show
    render_not_found unless @post = Post.find_by(slug: params[:id])
  end
end
