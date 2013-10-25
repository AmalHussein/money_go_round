class Lender < ActiveRecord::Base
	has_many :borrowers , through: :loans

	def lenders_by_country
		@lenders = 
	end 
	
end
