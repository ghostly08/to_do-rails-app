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

  describe "Get users#index" do
    context "When the user is not logged in" do
      it "should list all users" do
        users = create(:user, name: "javi", email: "javi@example.com", password: "123456")
      end
    end
  end

  describe "GET user#show" do
    it "should render user#show template" do
      user = create(:user, name: "javi", email: "javi@example.com", password: "123456")
      # task = create(:task, user: user)

      login_as(user, scope: :user)
      visit user_path(user)

      page.should have_content(user.name)
      page.should have_content(task.name)
      page.should have_content(task.status)
    end
  end

  describe "POST users#create" do
    it "should create a new user" do
      user = create(:user)

      fill_in "user_name", with: "Steven"
      fill_in "user_email", with: "steven@example.com"

      expect { click_button "Save" }.to change(User, :count).by(1)
    end
  end

end
