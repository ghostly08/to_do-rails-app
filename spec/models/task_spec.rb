require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'return the name for a task' do
    task = Task.create(name: 'Go for pizza')

    expect(task.name).to eq 'Go for pizza'
  end

  it 'return the status for a task' do
    task = Task.create(status: 'To-do')

    expect(task.status).to eq 'To-do'
  end

  it "belongs to a user" do
    task = Task.new
    user = User.new
    user.tasks << task
    expect(task.user).to be user
  end

end
