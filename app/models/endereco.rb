class Endereco < ApplicationRecord
  belongs_to :municipe

  validates :cep, :logradouro, :numero, :bairro, :cidade, :estado, presence: true
end
