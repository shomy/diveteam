class Question < ActiveRecord::Base
  belongs_to :user

  has_many :favorite_questions, dependent: :destroy
  has_many :favo_users, class_name: "User", foreign_key: "user_id", through: :favorite_questions, source: :user

  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorite_by(user)
    favorites.find_by(user_id: user.id)
  end
end
