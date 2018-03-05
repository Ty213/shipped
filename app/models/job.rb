class Job < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates_numericality_of :budget, greater_than: 100
	validates :description, length: { minimum: 20 }
	belongs_to :user
	has_many :boats
end
