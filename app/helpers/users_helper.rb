module UsersHelper
  # ログインユーザーであるか判定
  def login_user?(user)
    if user_signed_in?
      if current_user.id == user.id
        return true
      end
    end
  end
end
