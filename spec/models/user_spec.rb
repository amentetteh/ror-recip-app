require 'rails_helper'
# require 'spec_helper'
RSpec.describe User, type: :model do
    describe 'User' do
        it 'should be valid' do
            user = User.new(name: 'John', email: 'test@gmail.com', password: '123456')
            expect(user).to be_valid
        end
        it 'should not be valid' do
            user = User.new(name: 'John', email: '', password: '')
            expect(user).to_not be_valid
        end
    end
end