require 'rails_helper'
# require 'spec_helper'
RSpec.describe Food, type: :model do
    describe 'Food' do
        it 'should be valid' do
            user = user = User.new(name: 'John', email: 'test@gmail.com', password: '123456')
            food = food = Food.new(name: 'Pizza', quantity: 1, price: 10, measurement_unit: 'piece', user: user)
            expect(food).to be_valid
        end
        it 'should not be valid' do
            food = Food.new(name: '', quantity: '', price: '', measurement_unit: '')
            expect(food).to_not be_valid
        end
    end
end