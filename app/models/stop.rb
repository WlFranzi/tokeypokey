class Stop < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	belongs_to :trip
	belongs_to :user, through: :trip
end
