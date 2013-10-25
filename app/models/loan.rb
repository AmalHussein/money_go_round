class Loan < ActiveRecord::Base
	#has_many :payments 
	has_many :lenders 


# def loans_by_country
# 		@loans = Loans.select("")
# 	end 


# Order.select("date(created_at) as ordered_date, sum(price) as total_price").group("date(created_at)")

# 	SELECT date(created_at) as ordered_date, sum(price) as total_price
# FROM orders
# GROUP BY date(created_at)

end
