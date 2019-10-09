require 'rails_helper'


RSpec.feature "Task management function", type: :feature do
  
  scenario "Test task list" do

  Task.create!(name: 'test_task_01', status: 'testtesttest')
  
  visit tasks_path
  save_and_open_page

  expect(page).to have_content'testtesttest'
   end

  scenario "Test task creation" do
    visit new_task_path
    fill_in 'task[name]', :with => 'test'
    fill_in 'task[status]', :with =>'pending'
    click_on 'Create Task'
    expect(page).to have_content'Task was successfully created'
  end

  scenario "Test task details" do
  Task.create!(name: 'test_task_01', status: 'testtesttest')
  visit  'tasks'
  click_link "Show"
  expect(page).to have_content'testtesttest'
  end
end