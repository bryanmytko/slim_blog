module Admin
  class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def new
      @post = Post.new
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

      redirect_to post_path(@post.slug)
    end

    def edit
      render_not_found unless @post = Post.find_by(params[:slug])
    end

    def update
      if post = Post.find_by(slug: params[:id])
        post.update(user_params)
      end

      redirect_to post_path(post.slug)
    end

    private

    def user_params
      params
        .require(:post)
        .permit(:title, :slug, :content)
    end
  end
end
