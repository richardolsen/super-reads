class TextsController < ApplicationController
  def show
    text = Text.includes(:authors).find(params[:id])
    render :json => text, :include => :authors
  end

  def index
    texts = Text.includes(:authors).all
    render :json => texts, :include => :authors
  end
end
