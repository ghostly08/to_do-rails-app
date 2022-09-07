require 'rails_helper'

RSpec.describe User, type: :model do
  it 'return the name for a user' do
    user = User.create(name: 'Batman S')

    expect(user.name).to eq 'Batman S'
  end

  it 'return the email for a user' do
    user = User.create(email: 'batmans@example.com')

    expect(user.email).to eq 'batmans@example.com'
  end
end
