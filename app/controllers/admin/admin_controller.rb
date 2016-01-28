module Admin
  class AdminController < ApplicationController
    def index
      redirect_to :new_admin_post if current_admin_user
    end

    def login
      @admin_user = AdminUser.find_by(email: params[:email])

      if @admin_user && @admin_user.is_password?(params[:password])
        session[:current_admin_user_id] = @admin_user.id
        redirect_to "/admin/posts/new"
      else
        render text: "Invalid Email/Password.", layout: false
      end
    end

    def logout
      session.delete(:current_admin_user_id)
      redirect_to "/"
    end
  end
end
