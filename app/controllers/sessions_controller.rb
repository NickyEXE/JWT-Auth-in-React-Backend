class SessionsController < ApplicationController

  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: user
    else
      render json: {errors: "Invalid username or password"}
    end
  end

  def auto_login
    user = User.find_by(id: params[:user_id])
    if user
      render json: user
    else
      render json: {errors: "Autologin failed. This is probably your fault. Try clearing LocalStorage."}
    end
  end
end
