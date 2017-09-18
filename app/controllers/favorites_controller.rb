class FavoritesController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    favorite = Favorite.build(user_id: current_user.id, question_id: params[:question_id])
    favorite.save
  end

  def destroy
    @question = Question.find(params[:question_id])
    favorite = Favorite.find(user_id: current_user.id, question_id: params[:question_id])
    favorite.destroy
  end

end
