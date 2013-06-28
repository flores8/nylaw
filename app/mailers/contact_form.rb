class ContactForm < ActionMailer::Base
  default from: "admin@noblesyanezlaw.com"

  def contact(message)
  	@message = message
    mail(to: "admin@noblesyanezlaw.com", subject: "[noblesyanezlaw.com] #{message.subject}")
  end
end
