class AuthorsController < ApplicationController
  def index
    authors = Author.includes(:texts).all
    render :json => authors, :include => :texts
  end

  def show
    author = Author.includes(:texts).find(params[:id])

    if logged_in?
      texts = Text.find_all_texts_by_author_for_user(author.id, current_user.id)
    else
      texts = author.texts
    end

    render :json => {
      author: author,
      texts: texts
    }
  end
end
