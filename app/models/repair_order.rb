class RepairOrder < ApplicationRecord
	#validates :claimer_id, presence: true
	
	belongs_to :claimer
	belongs_to :device
	has_one :master
	has_one :status_order
	has_many :used_repair_parts

	accepts_nested_attributes_for :claimer
	accepts_nested_attributes_for :device

	def self.search(query)
  	  where("claimers.phone like ?", "%#{query}%") #search method by phone
	end
	
end
