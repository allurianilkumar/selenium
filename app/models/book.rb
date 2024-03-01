class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :published_year, presence: true
end
