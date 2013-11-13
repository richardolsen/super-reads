class FriendsController < ApplicationController
  def index
    user = User.includes(:friends).find(params[:user_id])
    render :json => user.friends, :include => :texts
  end
end
