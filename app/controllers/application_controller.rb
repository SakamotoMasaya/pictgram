class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception  #CSRF対策?  セキュリティ
  
  add_flash_types :success, :info, :warning, :danger
  
  helper_method :current_user, :logged_in?
  
  def current_user 
    @current_user ||= User.find_by(id: session[:user_id]) 
  end
  
  def logged_in? # ? ただのメソッドの一部　真偽値を返すタイプのメソッドを示すために使われる？
    !current_user.nil? # ! trueかfalseを返している？  "current_userがnilでない"
  end
  
  
end


