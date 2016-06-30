class HomeController < ApplicationController
  def index
    @posts = Post.all.limit(10).reverse_order
    @first_post = @posts.first.id unless @posts.blank?
  end
end
