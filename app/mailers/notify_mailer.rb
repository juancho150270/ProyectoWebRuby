class NotifyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notify_mailer.send_mail.subject
  #
  def send_mail to_user, subject, contrasena_recuperada, usuario_creado
    @usuario_creado=usuario_creado
    @contrasena_recuperada=contrasena_recuperada
    mail(to: to_user, subject: subject)
    
  end
end
