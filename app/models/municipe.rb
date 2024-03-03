class Municipe < ApplicationRecord
  has_one :endereco, dependent: :destroy  # Adiciona a associação com o endereço

  # validates :name, :cpf, :cns, :email, :birthdate, :phone, :photo, :status, presence: true
  # validates :cpf, :cns, :email, uniqueness: true
  # validates :cns, format: { with: /\A\d{15}\z/ }  # Validação simplificada, ajuste conforme necessário
  # validate :birthdate_cannot_be_in_the_future

  # private

  # def birthdate_cannot_be_in_the_future
  #   errors.add(:birthdate, "can't be in the future") if birthdate.present? && birthdate.future?
  # end
end
