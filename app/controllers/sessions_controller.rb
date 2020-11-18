class SessionsController < ApplicationController
  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: user
    else
      render json: {errors: "Hey, either your username or password was wrong. Get it together. You probably didn't hit your e key right."}
    end
  end
end
