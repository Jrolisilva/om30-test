require 'rails_helper'

RSpec.describe Municipe, type: :model do
  let(:municipe) { create(:municipe) }

  it 'is valid with valid attributes' do
    expect(municipe).to be_valid
  end

  it 'is not valid without a name' do
    municipe.name = nil
    expect(municipe).to_not be_valid
  end

  it 'is not valid without a cpf' do
    municipe.cpf = nil
    expect(municipe).to_not be_valid
  end
end
