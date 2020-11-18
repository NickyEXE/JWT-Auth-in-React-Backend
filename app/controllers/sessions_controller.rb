class SessionsController < ApplicationController
  def login
    user = User.find_by(username: params[:username])
    token = encode_token(user.id)
    if user && user.authenticate(params[:password])
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: "Hey, either your username or password was wrong. Get it together. You probably didn't hit your e key right."}
    end
  end

  def autologin
    user = session_user
    if user
      token = encode_token(user.id)
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: "Your localStorage information is inaccurate, please stop messing with it."}
    end
  end
end
