class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.build(question_id: params[:question_id])
    favorite.save
    @question = Question.find(params[:question_id])
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    @question = Question.find(params[:question_id])
  end

end
