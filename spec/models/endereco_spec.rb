require 'rails_helper'

RSpec.describe Endereco, type: :model do
  let(:endereco) { create(:endereco) }

  it 'is valid with valid attributes' do
    expect(endereco).to be_valid
  end

  it 'is not valid without a cep' do
    endereco.zipcode = nil
    expect(endereco).to_not be_valid
  end

  it 'is not valid without a logradouro' do
    endereco.street = nil
    expect(endereco).to_not be_valid
  end

  it 'is not valid without a bairro' do
    endereco.district = nil
    expect(endereco).to_not be_valid
  end

  it 'is not valid without a cidade' do
    endereco.city = nil
    expect(endereco).to_not be_valid
  end

  it 'is not valid without a estado' do
    endereco.state = nil
    expect(endereco).to_not be_valid
  end
end
