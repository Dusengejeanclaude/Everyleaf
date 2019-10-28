require 'rails_helper'

RSpec.describe Task, type: :model do

  it "Validation does not pass if the title is empty" do
    task = Task.new(name: '', status: 'Failure test')
    expect(task).not_to be_valid
  end

  it "Validation does not pass if status is empty" do
    task = Task.new(name: 'Failure test', status: '')
    expect(task).not_to be_valid
  end

  it "validation passes If content is described in  name and status" do
    task = Task.new(name: 'Pass test', status: 'pass test')
    expect(task).to be_valid
  end
end