class CommentsController < ApplicationController
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
    # /texts/:text_id/comments
    text = Text.find(params[:text_id])
    comment = text.comments.build(params[:comment])

    if comment.save
      render :json => comment
    else
      render :json => comment.errors
    end
  end
end
