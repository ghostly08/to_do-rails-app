require 'rails_helper'

RSpec.describe "Users", type: :request do
  it 'Creates an user and redirect to user page' do
    get '/users/sign_up'
    expect(response).to render_template(:new)

    post '/users', :params => { :user => {:name => 'Bob', :email => 'bob@example.com'} }

    expect(response).to redirect_to(assigns(:user))
    follow_redirect!

    expect(response).to render_template(:show)
    expect(response.body).to include('User was succesfully created!')
  end

  it 'Does not render a different template' do
    get '/users/sign_up'

    expect(response).to_not render_template(:show)
  end
end
