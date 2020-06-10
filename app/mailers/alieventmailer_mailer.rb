class AlieventmailerMailer < ApplicationMailer
  default from: 'professor@computeruniversity.in'
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Reminder: Cloud Computing Webinar by Chirag Nayyar')
  end
end
