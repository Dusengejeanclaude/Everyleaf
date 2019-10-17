FactoryBot.define do

    factory :task do
      title { 'Default title 1 created by Factory' }
      content { 'Default content 1 created by Factory' }
    end
  
    factory :second_task, class: Task do
      title { 'Default title 2 created by Factory' }
      content { 'Default content 2 created by Factory' }
    end
  end