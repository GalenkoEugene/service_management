class Claimer < ApplicationRecord
	has_and_belongs_to_many :repair_order

end
