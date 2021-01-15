class RegistrationsController < ApplicationController
  def create
    user = User.create!(
      email: params["user"]["email"],
      password: params["user"]["password"],
      password_confirmation: params["user"]["password_confirmation"],
      username: params["user"]["username"]
    )

    if user
      session[:user_id] = user.id
      user = user.as_json(:include => :pets)
      user.merge!(status: :created)
      user.merge!(logged_in: true)
      render :json => user
    else
      render json: { status: 500 }
    end
  end
end
