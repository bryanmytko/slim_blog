module Admin
  class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def create
      title = params[:post][:title]
      content = params[:post][:content]
      slug = params[:post][:slug]

      @post = Post.create(
        title: title,
        slug: slug,
        content: content,
        author_id: current_admin_user.id
      )

      redirect_to "/posts/#{@post.slug}"
    end
  end
end
