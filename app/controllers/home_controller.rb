class HomeController < ApplicationController
  skip_before_filter :authenticate_admin!, only: [:index]

  def index
    @post = Post.all.limit(10)
  end
end
