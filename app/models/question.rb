class Question < ActiveRecord::Base

  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_questions, dependent: :destroy
  has_many :favo_users, class_name: "User", foreign_key: "user_id", through: :favorite_questions, source: :user

  def favorite_user(user_id)
   Favorite.find_by(user_id: user_id)
  end

end
