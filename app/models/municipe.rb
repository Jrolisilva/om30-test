class Municipe < ApplicationRecord
  has_one :endereco, dependent: :destroy  # Adiciona a associação com o endereço
  accepts_nested_attributes_for :endereco, allow_destroy: true # Permite a criação de endereços aninhados

  validates :name, :cns, :birthdate, :phone, :status, presence: true
  validates :cns, format: { with: /\A\d{15}\z/ } # Validação simplificada, ajuste conforme necessário
  validates :cpf, presence: true, uniqueness: { message: 'já está em uso' }
  validates :email, presence: true, uniqueness: { message: 'já está em uso' }, format: { with: URI::MailTo::EMAIL_REGEXP }

  validate :valid_cpf? # Validação customizada para o CPF
  validates_comparison_of :birthdate,
                          greater_than_or_equal_to: Date.new(1924, 1, 1),
                          less_than_or_equal_to: Time.zone.today

  def status
    self[:status] ? 'Ativo' : 'Inativo'
  end

  def valid_cpf?
    errors.add(:cpf, 'inválido') unless CPF.valid?(cpf)
  end
end
