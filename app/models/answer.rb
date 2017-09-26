class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  has_many :goodanswers, dependent: :destroy
  has_many :goodusers, class_name: "User", foreign_key: "user_id", through: :goodanswers

end
