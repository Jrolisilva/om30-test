require 'rails_helper'

RSpec.describe MunicipeController, type: :controller do
  let(:municipe) { create(:municipe) }

  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Municipe' do
        expect do
          post :create, params: { municipe: attributes_for(:municipe) }
        end.to change(Municipe, :count).by(1)
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        { name: 'New Name' }
      end

      it 'updates the requested municipe' do
        put :update, params: { id: municipe.to_param, municipe: new_attributes }
        municipe.reload
        expect(municipe.name).to eq('New Name')
      end
    end
  end
end
