require 'rails_helper'

RSpec.describe SchoolClassesController, type: :controller do

  describe "GET #students" do
    it "returns http success" do
      get :students
      expect(response).to have_http_status(:success)
    end
  end

end
