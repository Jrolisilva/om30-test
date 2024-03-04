class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"

  def send_notification_email
    @municipe = params[:municipe]

    if @municipe.persisted?
      mail(to: @municipe.email, subject: "Municipe criado")
    else
      mail(to: @municipe.email, subject: "Municipe atualizado")
    end
  end
end
