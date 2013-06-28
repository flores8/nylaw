class ContactController < ApplicationController
	def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    ContactForm.contact_form(@message).deliver
    redirect_to(root_path, :notice => "Message was successfully sent.")
  end
end
