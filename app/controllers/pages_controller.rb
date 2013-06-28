class PagesController < ApplicationController
  def home
  end

  def about
  end

  def services
  end

  def contact
  	def new
	    @message = Message.new
	  end

	  def create
	    @message = Message.new(params[:message])
	    ContactForm.contact_form(@message).deliver
	    
	    if @message.valid?
	      NotificationsMailer.new_message(@message).deliver
	      redirect_to(root_path, :notice => "Message was successfully sent.")
	    else
	      flash.now.alert = "Please fill all fields."
	      render :new
	    end
	  end
  end
end
