require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    describe 'get#new' do 
        it 'renders our new user template' do
            get :new
            expect(response).to render_template(:new)
        end
    end

    describe 'users#create' do
        let (:valid_params) { {user: { username: 'GlizzyDawg', 
                                      password: 'hunter12_OG'} } }
        let (:invalid_params) { {user: { username: 'BDNick',
                                         password:''}}}

        let (:user) { User.find_by(username: 'GlizzyDawg')}

        context 'with valid params' do 
            before :each do
                post :create, params: valid_params
            end

            it 'logs in the user' do
                expect(session[:session_token]).to eq(user.session_token)
            end
        end

        context 'with invalid params' do
            it 'renders the new template' do
                post :create, params: invalid_params
                expect(response).to render_template(:new)
            end
        end
    end
end
