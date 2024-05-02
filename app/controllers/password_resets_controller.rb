class PasswordResetsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:password_reset][:email])
    if user
      user.create_reset_digest
      user.send_password_reset_email
      flash[:info] = "Ti abbiamo inviato un'email con le istruzioni per reimpostare la password"
      redirect_to root_url
    else
      flash.now[:danger] = "Indirizzo email non trovato"
      render 'new'
    end
  end

  def edit
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticated?(:reset, params[:id])
      # Se l'utente è autenticato e il token di reset è valido, renderizza il form per la reimpostazione della password
    else
      redirect_to root_url
    end
  end

  def update
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticated?(:reset, params[:id])
      if @user.update(user_params)
        # Password reimpostata con successo
        log_in @user
        flash[:success] = "La password è stata reimpostata con successo."
        redirect_to @user
      else
        render 'edit'
      end
    else
      redirect_to root_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
