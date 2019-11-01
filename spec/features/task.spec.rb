require 'rails_helper'
require 'capybara'


RSpec.feature "Task management function", type: :feature do
  
 
  scenario "Test task list" do

  Task.create!(name: 'test_task_01', status: 'testtesttest', priority: 'High')
  
  visit tasks_path
  save_and_open_page

  expect(page).to have_content'testtesttest'
   end

  scenario "Test task creation" do
    visit new_task_path
    fill_in 'task[name]', :with => 'test'
    fill_in 'task[status]', :with =>'pending'
    click_on '登録する'
    expect(page).to have_content''
  end

  scenario "Test task details" do
  Task.create!(name: 'test_task_01', status: 'testtesttest', priority: 'High')
  visit  'tasks'
  click_link "Show"
  expect(page).to have_content'testtesttest'
  end
  scenario "Test whether tasks are arranged in descending order of creation date" do
    Task.all.order('created_at desc')
    visit tasks_path
    expect(page).to have_content'test'
  end 
  scenario "Test whether tasks are arranged in descending order of deadline date" do
    Task.all.order('end_date desc')
    visit tasks_path
    expect(page).to have_content'test'
  end
  scenario "Do the search by title" do
    visit tasks_path
    expect(page).to have_content'test'
  end
  scenario "Do the sort by Priority" do
    visit tasks_path
    click_on 'priority High'
    assert Task.all.order('priority DESC')
end 
end
