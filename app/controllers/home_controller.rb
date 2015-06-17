class HomeController < ApplicationController
  def index
    @posts = Post.all.limit(10).reverse_order
  end
end
