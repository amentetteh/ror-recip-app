require 'rails_helper'
# require 'spec_helper'
RSpec.describe Recipe, type: :model do
    describe 'Recipe' do
        it 'should be valid' do
            user = User.new(name: 'John', email: 'test@gmail.com', password: '123456')
            recipe = Recipe.new(name: 'Pizza', description: 'Pizza', user: user)
            expect(recipe).to be_valid
        end

        it 'should be invalid' do
            recipe = Recipe.new(name: '', description: '')
            expect(recipe).to_not be_valid
        end
    end
end