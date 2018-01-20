class SessionsController < ApplicationController
  #respond_to :js
  def new
  end

  def create
    user = Usuario.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to usuarios_path
    else
      # Create an error message.
      respond_to do |format|
        format.js { render 'sessions/new' }
      end
      #flash.now[:danger] = 'El correo electrónico y/o contraseña ingresados no son correctos.'
      #render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end

