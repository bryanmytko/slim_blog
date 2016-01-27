class PostsController < ApplicationController
  def show
    if @post = Post.find_by(slug: params[:id])
      renderer = Redcarpet::Render::HTML
      markdown = Redcarpet::Markdown.new(renderer, extensions = {})
      @post.content = markdown.render(@post.content)
    else
      render_not_found
    end
  end
end
