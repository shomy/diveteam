class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.build(user_id: current_user.id, question_id: params[:question_id])
    unless @favorite.save
      riderect_to questions_path
    end
    #お気に入り追加後の合計お気に入り数を表示するため
    @favorites = Favorite.where(question_id: params[:question_id])
  end

  def destroy
    favorite = Favorite.find(user_id: current_user.id, question_id: params[:question_id])
    unless favorite.destroy
      riderect_to questions_path
    end
    #お気に入り削除後の合計お気に入り数を表示するため
    @favorites = Favorite.where(question_id: params[:question_id])
  end

end
