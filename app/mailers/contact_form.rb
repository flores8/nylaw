class ContactForm < ActionMailer::Base
  default from: "admin@noblesyanezlaw.com"
  default to: "admin@noblesyanezlaw.com"

  def contact(message)
  	@email = 'admin@noblesyanezlaw.com'
  	@message = message
    mail(to: @email, subject: "[noblesyanezlaw.com] #{message.subject}")
  end
end
