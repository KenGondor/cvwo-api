class Task < ApplicationRecord
    validates :name, presence: true
    validates_inclusion_of :priority, in: 0..3
end
