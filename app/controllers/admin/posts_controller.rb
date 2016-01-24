module Admin
  class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def create
      title = params[:post][:title]
      content = params[:post][:content]

      @post = Post.create(
        title: title,
        content: content,
        author_id: current_admin_user.id
      )

      redirect_to "/posts/#{@post.id}"
    end
  end
end
