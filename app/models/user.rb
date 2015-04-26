class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true
	has_many :trips
	has_many :stops, through: :trips
end

