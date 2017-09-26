class GoodanswersController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def create
    @goodanswer = Goodanswer.new(goodanswer_params)
    @answer = Answer.find(@goodanswer.answer_id)
      if @goodanswer.save
        respond_with @answer
      end
  end

  def destroy
    @goodanswer = Goodanswer.find(params[:id])
    @answer = Answer.find(@goodanswer.answer_id)

    if @goodanswer.destroy
        respond_with @answer
    end
  end

  private
  def goodanswer_params
      params.require(:goodanswer).permit(:user_id, :answer_id)
  end
end
