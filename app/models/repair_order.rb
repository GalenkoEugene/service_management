class RepairOrder < ApplicationRecord
	validates :claimer_id, presence: true
	belongs_to :claimer
	accepts_nested_attributes_for :claimer
	has_many :devices
	has_many :masters
	has_one :status_order

	
end
