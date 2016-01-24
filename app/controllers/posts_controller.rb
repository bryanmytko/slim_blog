class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    renderer = Redcarpet::Render::HTML
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    @post.content = markdown.render(@post.content)
  end
end
