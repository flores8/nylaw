class ContactForm < ActionMailer::Base
  default from: "admin@noblesyanezlaw.com"
  default :to => "admin@noblesyanezlaw.com"

  def contact_form(message)
  	@message = message
    mail(subject: "[noblesyanezlaw.com] #{message.subject}")
  end
end
