class Question < ActiveRecord::Base
  belongs_to :user
  has_many :favorite_questions, dependent: :destroy
  has_many :favo_users, class_name: "User", foreign_key: "user_id", through: :favorite_questions, source: :user
  has_many :answers, dependent: :destroy
end
