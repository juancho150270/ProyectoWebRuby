class NotifyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notify_mailer.send_mail.subject
  #
  def send_mail_usuario_creado to_user, subject, usuario_creado
    @usuario_creado=usuario_creado
    mail(to: to_user, subject: subject)    
  end
  def send_mail_clave_recuperada to_user, subject, clave_recuperada
    @clave_recuperada=clave_recuperada
    mail(to: to_user, subject: subject)    
  end
end
