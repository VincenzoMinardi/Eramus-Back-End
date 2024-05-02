class SessionsController < ApplicationController
  def new
    # Mostra il form di login
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      # Login avvenuto con successo
      log_in user
      redirect_to user # o a qualsiasi altra pagina desiderata
    else
      # Messaggio di errore e reindirizzamento al form di login
      flash.now[:danger] = 'Combinazione di username/password non valida'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url # o a qualsiasi altra pagina desiderata dopo il logout
  end
end
