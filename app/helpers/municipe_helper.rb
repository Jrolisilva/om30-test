module MunicipeHelper
  def send_notification(municipe)
    ApplicationMailer.with(municipe: municipe).send_notification_email.deliver_now
  end
end
