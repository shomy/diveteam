class CreateFavoriteQuestions < ActiveRecord::Migration
  def change
    create_table :favorite_questions do |t|
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
    add_index :favorite_questions, :user_id
    add_index :favorite_questions, :question_id
    add_index :favorite_questions,[:user_id,:question_id],unique: true
  end
end
