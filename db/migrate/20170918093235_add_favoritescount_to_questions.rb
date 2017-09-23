class AddFavoritescountToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :favorites_count, :integer
  end
end
