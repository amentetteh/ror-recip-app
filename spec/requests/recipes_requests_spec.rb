require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  user = User.new(name: 'John', email: 'test@gmail.com', password: '123456')
  food = Food.new(name: 'Pizza',  quantity: 1, price: 10, measurement_unit: 'piece', user: user)
  recipe = Recipe.new(name: 'Pizza', preparation_time: 1, cooking_time: 2, description: 'Pizza', public: true, user: user)
  before do
    user.confirm
    sign_in user
  end
  describe "GET /recipes" do
    it "works! (now write some real specs)" do
      get recipes_path
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get recipes_path
      expect(response).to render_template('index')
    end
end
end
