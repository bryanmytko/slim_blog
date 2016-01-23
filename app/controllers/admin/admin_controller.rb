module Admin
  class AdminController < ApplicationController
    def index
    end

    def login
      @admin_user = AdminUser.find_by(email: params[:email])

      if @admin_user && @admin_user.is_password?(params[:password])
        render text: "LOGGED IN", layout: false
      else
        render text: "NO", layout: false
      end
    end
  end
end
