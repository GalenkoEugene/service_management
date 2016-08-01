class RepairOrder < ApplicationRecord
	#validates :claimer_id, presence: true
	
	belongs_to :claimer
	has_one :device
	has_one :master
	has_one :status_order
	has_many :used_repair_parts

	accepts_nested_attributes_for :claimer
	
end
