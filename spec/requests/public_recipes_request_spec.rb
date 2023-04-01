require 'rails_helper'

RSpec.describe "PublicRecipes", type: :request do
  user = User.new(name: 'John', email: 'test@gmail.com', password: '123456')
  food = Food.new(name: 'Pizza', quantity: 1, price: 10, measurement_unit: 'piece', user: user)
  recipe = Recipe.new(name: 'Pizza', description: 'Pizza', user: user)
  recipe_food = RecipeFood.new(recipe: recipe, food: food)

  before do
    user.confirm
    sign_in user
  end

  describe 'GET /public_recipes' do
    before { get public_recipes_path }

    it "works! (now write some real specs)" do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the index template' do
        expect(response).to render_template('index')
    end
  end
end
