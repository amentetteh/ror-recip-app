require 'rails_helper'
# require 'spec_helper'
RSpec.describe RecipeFood, type: :model do
    describe 'RecipeFood' do
        it 'should be valid' do
            user = User.new(name: 'John', email: 'test@gmail.com', password: '123456')
            food = Food.new(name: 'Pizza', quantity: 1, price: 10, measurement_unit: 'piece', user: user)
            recipe = Recipe.new(name: 'Pizza', description: 'Pizza', user: user)
            recipe_food = RecipeFood.new(recipe: recipe, food: food)
            expect(recipe_food).to be_valid
        end
        it 'should not be valid' do
            recipe_food = RecipeFood.new(recipe: nil, food: nil)
            expect(recipe_food).to_not be_valid
        end
    end
end