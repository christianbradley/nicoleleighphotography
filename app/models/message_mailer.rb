class MessageMailer < ActionMailer::Base
  
  def contact( message )
    @message = message
    recipients "nicole@nicoleleighphoto.com"
    from default_from
    subject "You received a Message on NicoleLeighPhotography.com"
  end
  
  def thanks( message )
    @message = message
    recipients @message.from_email
    from default_from
    subject "Thanks for contacting me!"
  end

  private

  def default_from
    "nicole@nicoleleighphoto.com"
  end

end
