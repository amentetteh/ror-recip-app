require 'rails_helper'
RSpec.describe "RecipeFoods", type: :request do
    user = User.new(name: 'John', email: 'test@gmail.com', password: '123456')
    before do
        user.confirm
        sign_in user
      end
      describe 'GET /shoppinglists' do
        before { get public_recipes_path }
        it "works! (now write some real specs)" do
          expect(response).to have_http_status(:ok)
        end
    
        it 'renders the index template' do
            expect(response).to render_template('index')
        end
      end
end