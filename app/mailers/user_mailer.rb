class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset_password_email.subject
  #
  def reset_password_email(user)
    @user = user
  @url  = "http://localhost:3000#{edit_password_reset_path(user.reset_password_token)}"
  mail(:to => user.email,
       :subject => "Your password has been reset")
  end
  def welcome_email(user)
    @user = user
    @url  = "http://localhost:3000/login"
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
