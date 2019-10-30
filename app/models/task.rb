class Task < ApplicationRecord
     def self.order_list(sort_order)
      if sort_order == "end_date"
        order(end_date: :desc)
       else
        order(start_date: :desc)
       end 
    end 
    validates :priority, presence: true
    validates :name, presence: true 
    validates :status, presence: true 
end
