module SessionsHelper
  def log_in(usuario)
    session[:user_id] = usuario.id
  end
  
  def current_user
    @current_user ||= Usuario.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    reset_session
    @current_user = nil
  end
end
