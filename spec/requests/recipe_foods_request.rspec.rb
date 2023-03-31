require 'rails_helper'

RSpec.describe "RecipeFoods", type: :request do
    describe "GET /recipe_foods" do
        it "works! (now write some real specs)" do
            get recipe_foods_path
            expect(response).to have_http_status(302)
        end
    end
end