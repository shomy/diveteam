class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorite = current_user.favorites.joins(:question)
  end

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
