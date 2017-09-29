class FavoriteQuestionsController < ApplicationController
  before_action :authenticate_user!

  def create

    @favorite_question = FavoriteQuestion.new(favoritequestion_params)

      if @favorite_question.save
        return_back and return
      end
  end

  def destroy
    @favorite_question = FavoriteQuestion.find(params[:id])
    if @favorite_question.destroy
      return_back and return
    end
  end

  private
    def favoritequestion_params
      params.require(:favorite_question).permit(:user_id, :question_id)
    end
end
