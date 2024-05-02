class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      # L'utente è autenticato con successo
      log_in user  # Metodo per impostare la sessione dell'utente loggato
      @user = User.new(user_params)  # Creazione di un nuovo utente
      if @user.save
        # Operazione di salvataggio riuscita
        redirect_to @user, notice: 'Utente creato con successo!'
      else
        # Operazione di salvataggio fallita, mostra un messaggio di errore
        render 'new', alert: 'Errore durante la creazione dell\'utente'
      end
    else
      # Autenticazione fallita, mostra un messaggio di errore
      flash.now[:danger] = 'Email o password non validi'
      render 'new'
    end
  end
end
