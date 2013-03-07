class MyMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.my_mailer.bemvindo.subject
  #
  def bemvindo(email)
    @email = email
    mail to: email, subject: "Welcome to my App"
  end
end
