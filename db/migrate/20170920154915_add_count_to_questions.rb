class AddCountToQuestions < ActiveRecord::Migration
  def up
    change_column :questions, :favorites_count, :integer, default: 0
  end

  def down
    change_column :questions, :favorites_count, :integer
  end
end
