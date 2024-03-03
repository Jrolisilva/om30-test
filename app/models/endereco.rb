class Endereco < ApplicationRecord
  belongs_to :municipe

  validates :cep, :logradouro, :bairro, :cidade, :uf, :codigo_ibge, presence: true
end
