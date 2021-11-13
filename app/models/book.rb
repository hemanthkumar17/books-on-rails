class Book < ApplicationRecord
    validates :b_title, presence: true
    validates :author, presence: true
    validates :year, presence: true
    validates :publisher, presence: true
    
end
