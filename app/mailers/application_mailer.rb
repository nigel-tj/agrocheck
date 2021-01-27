class ApplicationMailer < ActionMailer::Base
  default from: 'agrocheck@nseye.co.zw'
  layout 'mailer'

  def send_welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome to AgroCheck!")
  end
end
