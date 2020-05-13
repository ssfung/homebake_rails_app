require 'rails_helper'

RSpec.describe ListingsController do 
  context '#create' do
    it 're-renders the form if the name is invalid' do
        post :create, params:{ listing: {name:nil }} 

        expect(response).to render_template(:new)
    end 
  end
end 