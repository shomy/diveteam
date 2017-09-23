class AddUseridnameToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :user_id, :integer
    add_column :questions, :user_name, :string
  end
end
