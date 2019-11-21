FactoryBot.define do

    factory :task do
      name { 'Default title 1 created by Factory' }
      status { 'Default content 1 created by Factory' }
      priority { 'Default content 2 created by Factory' }
     
      

    end
  
    factory :second_task, class: Task do
      name { 'Default title 2 created by Factory' }
      status { 'Default content 2 created by Factory' }
      priority { 'Default content 2 created by Factory' }


    end
  end