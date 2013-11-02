class SessionsController < ApplicationController
  before_filter :require_no_current_user!, :only => [:create, :new]
  before_filter :require_current_user!, :only => [:destroy]


  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:identifier], params[:password])

    if @user
      # current_user = @user
      login_user(@user)
      redirect_to root_url
    else
      flash[:errors] = ["Invalid username or password"]
      @user = User.new(:identifier => params[:identifier])
      render :new
    end
  end

  def destroy
    logout_current_user!
    redirect_to new_session_url
  end
end
