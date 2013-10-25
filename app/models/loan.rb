class Loan < ActiveRecord::Base
	has_many :payments 
	has_many :lenders 
end
