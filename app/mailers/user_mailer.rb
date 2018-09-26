  # app/mailers/user_mailer.rb
  class UserMailer < ApplicationMailer
    default from: 'igmarberganza@gmail.com'
 
    def welcome_email
        @user = params[:user]
        @url  = 'http://example.com/login'
        mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
  end