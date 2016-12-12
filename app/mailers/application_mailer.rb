class ApplicationMailer < ActionMailer::Base
  default from: Figaro.env.gmail_username
  layout 'mailer'
end
