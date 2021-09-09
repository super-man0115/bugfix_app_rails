module UserSessionsHelper
  def log_in_with(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      # @current_userを既に取得している場合はそれを返し、無駄なfind_byを実行しない
      return @current_user if @current_user.present?

      @current_user = User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    current_user.present? ? true : false
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
