class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = Usuario.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to usuarios_path
    else
      # Create an error message.
      flash.now[:danger] = 'El correo electrónico y/o contraseña ingresados no son correctos.'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end

