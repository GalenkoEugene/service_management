class RepairOrder < ApplicationRecord
	validates :claimer_id, presence: true
	belongs_to :claimer
	has_many :devices
	has_many :masters
	has_one :status_order
end
