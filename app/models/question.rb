class Question < ActiveRecord::Base
  belongs_to :user
  has_many :favorite_questions
  has_many :favo_users, class_name: "User", foreign_key: "user_id", through: :favorite_questions, source: :user, dependent: :destroy

end
