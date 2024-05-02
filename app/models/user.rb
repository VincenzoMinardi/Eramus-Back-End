
class User < ApplicationRecord
  attr_accessor :password_reset_token
  before_create :generate_password_reset_token

  def generate_password_reset_token
    self.password_reset_token = SecureRandom.urlsafe_base64
    self.password_reset_sent_at = Time.zone.now
  end

  def password_reset_expired?
    password_reset_sent_at < 2.hours.ago
  end
end

# Nel controller PasswordResetsController
class PasswordResetsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user
      user.generate_password_reset_token
      user.save
      # Invia email di reset password
    else
      flash[:danger] = "Email non trovata"
      render 'new'
    end
  end

  def edit
    @user = User.find_by(password_reset_token: params[:id])
    if @user && !@user.password_reset_expired?
      # Reimposta la password
    else
      flash[:danger] = "Link di reset password non valido o scaduto"
      redirect_to new_password_reset_path
    end
  end
end

# Nel mailer PasswordResetMailer
class PasswordResetMailer < ApplicationMailer
  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Reset Password"
  end
end
