class AddIndexToFavorites < ActiveRecord::Migration
  def change
    add_index :favorites, :user_id
    add_index :favorites, :question_id
    add_index :favorites,[:user_id,:question_id],unique: true
  end
end
