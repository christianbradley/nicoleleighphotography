class MessagesController < ApplicationController
  def index
    redirect_to new_message_path
  end
  def new
    @message = Message.new
  end
  def sent
  end
  def create
    @message = Message.new( params[:message] )
    if @message.save
      MessageMailer.deliver_contact( @message )
      MessageMailer.deliver_thanks( @message )
      redirect_to sent_messages_path
    else
      render :action => :new
    end
  end
end
