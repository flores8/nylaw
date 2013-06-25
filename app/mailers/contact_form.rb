class ContactForm < ActionMailer::Base
  default from: "noreply@noblesyanezlaw.com"
  default :to => "noblesyanezlaw@gmail.com"

  def contact(message)
  	@message = message
    mail(subject: "[noblesyanezlaw.com] #{message.subject}")
  end
end
