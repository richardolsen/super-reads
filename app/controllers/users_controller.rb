class UsersController < ApplicationController
  before_filter :require_current_user!, :only => [:friend, :unfriend]


  def show
    @user = User.find(params[:id])

    render :json => @user
  end

  def index
    if(logged_in?)
      @users = User.where("id != ?", current_user.id)
    else
      @users = User.all
    end

    if(current_user)
      friends = User.where(:id => current_user.friends.pluck(:id)).pluck(:id);

      @users.each do |user|
        user.friended = friends.include?(user.id)
      end
    end

    render :json => @users, :methods => :friended
  end

  def friend
    @user = User.find(params[:id])

    friending = Friending.where(user_id: current_user.id, friend_id: @user.id).first
    if friending.nil?
      current_user.friends << @user
    end

    @user.friended = true
    if @user.save
      render :json => @user, :methods => :friended
    else
      render :json => @user.errors
    end
  end

  def unfriend
    @user = User.find(params[:id])

    friending = Friending.where(user_id: current_user.id, friend_id: @user.id)
    unless friending.nil?
      current_user.friends.delete(@user)
    end

    @user.friended = false
    if @user.save
      render :json => @user, :methods => :friended
    else
      render :json => @user.errors
    end
  end
end
