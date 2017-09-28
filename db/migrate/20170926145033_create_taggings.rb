class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :question, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :taggings, [:question_id, :tag_id], unique: true
  end
end
