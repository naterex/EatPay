class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url  = 'http://payeat.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to PayEat')
  end
end
