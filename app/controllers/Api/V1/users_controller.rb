class Api::V1::UsersController < ApplicationController
  def show
    user = User.find_by_id(params[:id])
    render :json => user.to_json(:include => :pets)
  end
end
