class CommentsController < ApplicationController
  before_filter :require_current_user!


  def index
    # for a text
    # /texts/:text_id/comments
    text = Text.includes(:comments).find(params[:text_id])
    # render :json => text.comments_by_parent_id, :include => :user
    render :json => text.comments, :include => :user
  end

  def show
  end

  def create
    comment = current_user.comments.build(params[:comment])

    if comment.save
      render :json => comment, :include => :user
    else
      render :json => comment.errors
    end
  end
end
