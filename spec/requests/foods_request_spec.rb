require 'rails_helper'

RSpec.describe "Foods", type: :request do
  describe "GET /foods" do
    it "works! (now write some real specs)" do
      get foods_path
      expect(response).to have_http_status(302)
    end

    it "redirects to the login page" do
      get foods_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
