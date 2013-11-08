class ReviewsController < ApplicationController
  before_filter :require_current_user!, :only => [:current, :create]


  def show
    if params[:id].to_i == -1
      review = current_user.reviews.find_by_text_id(params[:text_id])
    else
      review = Review.find(params[:id])
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
end
