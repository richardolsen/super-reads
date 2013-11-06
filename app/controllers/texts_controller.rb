class TextsController < ApplicationController
  def show
    text = Text.includes(:authors).find(params[:id])
    render :json => text, :include => :authors
  end

  def index
    if logged_in?
      texts = Text.includes(:authors).find_texts_for_user(current_user.id)
    else
      texts = Text.includes(:authors).all
    end

    render :json => texts, :include => :authors
  end
end
