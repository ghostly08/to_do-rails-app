require 'rails_helper'

RSpec.describe User, type: :model do
  it 'return the name for a user' do
    user = build(:user, name: 'Rita')

    expect(user.name).to eq 'Rita'
  end

  it 'return the email for a user' do
    user = build(:user, email: 'rita@example.com')

    expect(user.email).to eq 'rita@example.com'
  end

  it "has many tasks" do
    should respond_to(:tasks)
  end

end
