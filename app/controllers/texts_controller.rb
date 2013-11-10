class TextsController < ApplicationController
  def show
    text = Text.includes(:authors).includes(:reviews).find(params[:id])
    rating = get_rating(text.id)

    render :json => {
      :text => text,
      :user_rating => rating
    }
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

    render :json => texts
  end

  def rate
    rating_obj = Rating.find_by_user_id_and_text_id(current_user.id, params[:id])
    rating_obj ||= current_user.ratings.build(text_id: params[:id])

    rating = params[:rating]

    if rating_obj.rating != rating
      rating_obj.rating = rating

      if rating_obj.save
        render :json => rating_obj, :methods => :average_rating
      else
        render :json => rating_obj.errors
      end
    end
  end


  private
    def get_rating(text_id)
      if logged_in?
        rating_obj = Rating.find_by_user_id_and_text_id(current_user.id, text_id)
        rating = (rating ? rating_obj.rating : 0)
      else
        rating = 0
      end
    end
end
