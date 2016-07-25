class RepairOrder < ApplicationRecord
	validates :claimer_id, presence: true
	belongs_to :claimer
end
