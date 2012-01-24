class MessageMailer < ActionMailer::Base
  default :from => "mail@blindforward.com",
         :return_path => 'mail@blindforward.com'
  def message_send(message)
    @message = message
    mail(:to => "#{message.to}", :subject => "#{message.subject}")
  end
end
