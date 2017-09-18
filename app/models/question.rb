class Question < ActiveRecord::Base

  belongs_to :user
  has_many :favorites, dependent: :destroy

  def favorite_user(user_id)
   Favorites.find_by(user_id: user_id)
  end
end
