class TopController < ApplicationController
  def index
    @q = Question.order("created_at DESC").ransack(params[:q])
    @questions = @q.result
  end
end
