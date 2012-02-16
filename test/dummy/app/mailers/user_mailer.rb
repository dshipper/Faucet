class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.one_week.subject
  #
  def one_week
    puts "called"
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
