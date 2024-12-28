class PagesController < ApplicationController
  def home
  end

  def about
  end
  
    def works
    end

  def contact
  end

  def contact_submit
    @message = Message.new(message_params)
  
    if @message.save
      flash[:notice] = "Message sent successfully!"
      redirect_to root_path
    else
      flash[:alert] = "Couldn't send your message."
      render :contact
    end
  end

  def contact_feedback
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :message)
  end
end
