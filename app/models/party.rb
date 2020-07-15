class Party < ApplicationRecord
    belongs_to :category
    validates :date, uniqueness: { scope: :name }
    validates :date, future_date: true
    accepts_nested_attributes_for :category


    def private?
        self.private ? 'Private' : 'Public'
    end 
    
    

end
