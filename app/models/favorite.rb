class Favorite < ActiveRecord::Base

  belongs_to :user
  #お気に入りの数を追加、削除する度にお気に入りの数を
  #questionテーブルの「favorites_count」カラムに代入する
  belongs_to :question, counter_cache: :favorites_count
end
