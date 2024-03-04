class Endereco < ApplicationRecord
  belongs_to :municipe

  validates :zipcode, :street, :number, :district, :city, :state, presence: true
end
