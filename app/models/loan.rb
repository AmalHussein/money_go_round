class Loan < ActiveRecord::Base
	#has_many :payments 
	has_and_belongs_to_many :lenders 

#Methods for the Data Visualization 
def self.by_country
	loan = Loan.count(:group => "location_country").sort_by{ |pair| pair[1] } 
	loan.unshift(['Country', 'Loans'])
end 



require 'kiva'

#Methods for my API Calls

def self.recent
	@newest = Kiva::Loan.load_newest
	@newest.each do |loan|
		puts "#{loan.name}"
		puts "Sector:#{loan.sector}"
		puts "#{loan.description}"
		puts "Current Basket Amount:#{loan.basket_amount}"
		puts "Amount funded so far $#{loan.funded_amount}"
	end 
end



end 
