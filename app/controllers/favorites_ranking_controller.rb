class FavoritesRankingController < ApplicationController
  def index
    #上位50のみ抽出
    @questions = Question.order(favorites_count: :DESC).limit(50)
  end
end
