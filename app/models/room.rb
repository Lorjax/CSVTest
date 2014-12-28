class Room < ActiveRecord::Base
	has_many :computers
	validates :nummer, presence: true
end
