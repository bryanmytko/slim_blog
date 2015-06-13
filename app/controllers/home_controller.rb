class HomeController < ApplicationController
  def index
    @post = Post.all.limit(10)
  end
end
