class Group < ApplicationRecord
    has_many :staffs,
    has_many :accounts,

    validates :number, presence: true 
end
