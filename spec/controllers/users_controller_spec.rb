require "rails_helper"

RSpec.describe UsersController, type: :controller do
  context "test" do
    it "displays all users" do
      get :index
    end
  end

  context 'test' do
    it 'display one user' do
      get :show
    end
  end
end
