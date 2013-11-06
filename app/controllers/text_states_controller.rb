class TextStatesController < ApplicationController
  before_filter :require_current_user!

  def create
    text_state = current_user.text_states.build(:text_id => params[:text_id],
      :state => params[:state])

    if text_state.save
      text = Text.find(params[:text_id])
      render :json => text
    else
      render :json => text_state.errors
    end
  end

  def update
    text_state = current_user.text_states.where(:text_id => params[:text_id]).first
    text_state.state = params[:state]

    if text_state.save
      render :json => Text.find(params[:text_id])
    else
      render :json => text_state.errors
    end
  end
end
