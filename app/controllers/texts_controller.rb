class TextsController < ApplicationController
  def show
    text = Text.includes(:authors).find(params[:id])
    render :json => text, :include => :authors
  end

  def index
    # we might get a request from a sub-resource under users
    if(params[:user_id])
      texts = Text.includes(:authors).find_texts_for_user(params[:user_id])
    elsif logged_in?
      texts = Text.includes(:authors).find_all_texts_for_user(current_user.id)
    else
      texts = Text.includes(:authors).all
    end

    render :json => texts, :include => :authors
  end
end
