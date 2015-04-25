class Stop < ActiveRecord::Base
	validates :name, presence: true
	belongs_to :trip
end
