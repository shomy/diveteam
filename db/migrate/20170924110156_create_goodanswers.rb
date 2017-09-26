class CreateGoodanswers < ActiveRecord::Migration
  def change
    create_table :goodanswers do |t|
      t.references :user, foreign_key: true
      t.references :answer, foreign_key: true

      t.timestamps null: false
    end
    add_index :goodanswers, :user_id
    add_index :goodanswers, :answer_id
    add_index :goodanswers,[:user_id,:answer_id],unique: true
  end
end
