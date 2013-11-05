class AuthorsController < ApplicationController
  def index
    authors = Author.includes(:texts).all
    render :json => authors, :include => :texts
  end

  def show
    author = Author.includes(:texts).find(params[:id])
    render :json => author, :include => :texts
  end
end
