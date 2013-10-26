class Lender < ActiveRecord::Base
	has_many :borrowers , through: :loans

# 	def lenders_by_country
# 		@lenders = Lender.select(:)
# 	end 


# Order.select("date(created_at) as ordered_date, sum(price) as total_price").group("date(created_at)")

# 	SELECT date(created_at) as ordered_date, sum(price) as total_price
# FROM orders
# GROUP BY date(created_at)
end
