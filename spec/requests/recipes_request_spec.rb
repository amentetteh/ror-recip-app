require 'rails_helper'

RSpec.describe "Recipe", type: :request do
    describe "GET /public_recipes" do
        it "works! (now write some real specs)" do
            get recipes_path
            expect(response).to have_http_status(302)
        end
    end
end