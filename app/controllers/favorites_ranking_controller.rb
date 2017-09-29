class FavoritesRankingController < ApplicationController
  def index
    #上位5つの質問のみ抽出
    @questions = Question.order(favorites_count: :DESC).limit(5)
  end
end
