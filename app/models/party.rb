class Party < ApplicationRecord
    validates :date, uniqueness: { scope: :name }
    validates :date, future_date: true

    def private?
        self.private ? 'Private' : 'Public'
    end    

end
