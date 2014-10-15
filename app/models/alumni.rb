class Alumni < ActiveRecord::Base
	validates :name, presence: true
	validates :hall, presence: true
	validates :dept, presence: true
	validates :year, presence: true
end
