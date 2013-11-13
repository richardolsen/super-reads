class GenresController < ApplicationController
  def show
  end

  def index
    genres = Genre.all

    render :json => genres
  end

  def texts
    genre = Genre.find(params[:id])

    if logged_in?
      texts = Text.includes(:authors).find_all_texts_by_genre_for_user(params[:id], current_user.id)
    else
      texts = Text.includes(:authors).all
    end

    render :json => {
      :genre => genre,
      :texts => texts
    }
  end

  def authors
  end
end
