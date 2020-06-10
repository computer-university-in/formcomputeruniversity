class WdtmzMailer < ApplicationMailer
  default from: 'professor@computeruniversity.in'
  def welcome_email(user)
    attachments.inline["email_header.png"] = File.read("#{Rails.root}/app/assets/images/email_header.png")
    @user = user
    mail(to: @user.email, subject: 'Your response for Cloud Computing is recorded successfully at form@Computer University')
  end
end
