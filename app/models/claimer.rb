class Claimer < ApplicationRecord
	validates 	:fio, 	presence: true, length: { maximum: 50 }
	validates	:phone, presence: true, length: { maximum: 15 }
	validates	:email, length: { maximum: 40 }
	validates	:city, 	presence: true, length: { maximum: 20 }
	validates	:adress, presence: true, length: { maximum: 60 }

	has_many :devices, :through => :repair_order
	
end
