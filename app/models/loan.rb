class Loan < ActiveRecord::Base
	#has_many :payments 
	has_and_belongs_to_many :lenders 

#Methods for the Data Visualization 
def self.by_country
	 loan = Loan.count(:group => "location_country").sort_by{ |pair| pair[1] } 
	 loan.unshift(['Country', 'Loans'])
	end 




#Methods for my API Calls

def recent_loans
@recent = 
end



end
