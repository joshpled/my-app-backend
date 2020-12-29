class SessionsController < ApplicationController
  include CurrentUserConcern

  def create
    # byebug
    user = User.find_by(email: params["user"]["email"]).try(:authenticate, params["user"]["password"])
    if user
      session[:user_id] = user.id
      user = user.as_json(:include => :pets)
      user.merge!(status: :created)
      user.merge!(logged_in: true)
      render :json => user
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    # byebug
    if @current_user
      user = @current_user.as_json(:include => :pets)
      user.merge!(logged_in: true)
      render :json => user
    else
      render json: {
               logged_in: false,
             }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true }
  end
end
