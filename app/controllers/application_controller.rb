class ApplicationController < ActionController::API

  def get_user_id
    request.headers["Authorization"]
  end

  def session_user
    User.find_by_id(request.headers["Authorization"])
  end

end
