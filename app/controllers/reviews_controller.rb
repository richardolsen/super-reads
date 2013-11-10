class ReviewsController < ApplicationController
  before_filter :require_current_user!, :only => [:create]


  def index
    reviews = Review.includes(:user).all_with_rating(params[:text_id])

    render :json => reviews
  end

  def show
    if params[:id].to_i == -1
      review = current_user.reviews.includes(:user).find_by_text_id(params[:text_id])
    else
      review = Review.includes(:user).find(params[:id])
    end

    render :json => review
  end

  def create
    review = current_user.reviews.build(params[:review])
    review.text_id = params[:text_id]

    if review.save
      render :json => review
    else
      render :json => review.errors
    end
  end

  def update
    review = Review.includes().find(params[:id])

    if review.update_attributes(params[:review])
      render :json => review
    else
      render :json => review.errors
    end
  end
end
