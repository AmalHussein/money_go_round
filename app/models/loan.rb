class Loan < ActiveRecord::Base
	#has_many :payments 
	has_and_belongs_to_many :lenders 

#Methods for the Data Visualization 
def self.by_country
<<<<<<< HEAD
	loan = Loan.count(:group => "location_country").sort_by{ |pair| pair[1] } 
	loan.unshift(['Country', 'Loans'])
end 



require 'kiva'

#Methods for my API Calls
=======
	 loan = Loan.all.count(:group => "location_country").sort_by{ |pair| pair[1] } 
	 loan.unshift(['Country', 'Loans'])
	end 
>>>>>>> oauth

def self.recent
	newest = Kiva::Loan.load_newest
 	@name = newest.name
	@description= newest.description
	@funded = newest.funded_amount

	# # @newest.each do |loan|
	# 	puts "#{loan.name}"
	# 	puts "Sector:#{loan.sector}"
	# 	puts "#{loan.description}"
	# 	puts "Current Basket Amount:#{loan.basket_amount}"
	# 	puts "Amount funded so far $#{loan.funded_amount}"
	# end 
# end
end 


# [#<Kiva::Loan:0x007f8ec5db8318 @id=622728, @name="Cecilia", 
# 	@description={"languages"=>["en"]}, @status="fundraising",
# 	 @funded_amount=0, @basket_amount=0, @image={"id"=>1455543, "template_id"=>1},
# 	  @activity="General Store", @sector="Retail", @use="to buy additional stock to 
# 	  sell in her general store.", @location={"country_code"=>"PH", "country"=>"Philippines",
# 	  "town"=>"Calatrava, Negros Occidental", "geo"=>{"level"=>"country", "pairs"=>"13 122", 
# 	  	"type"=>"point"}}, @partner_id=145, @posted_date=2013-10-27 22:30:16 UTC>,

end 
