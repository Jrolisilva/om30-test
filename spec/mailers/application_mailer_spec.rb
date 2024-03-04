require 'rails_helper'

RSpec.describe ApplicationMailer, type: :mailer do
  describe 'send_notification_email' do
    let(:municipe) { create(:municipe) }
    let(:mail) { ApplicationMailer.with(municipe: municipe).send_notification_email.deliver_now }

    it 'renders the headers' do
      expect(mail.subject).to eq('Municipe criado')
      expect(mail.to).to eq([municipe.email])
      expect(mail.from).to eq(['from@example.com'])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match('Hello')
    end
  end
end
