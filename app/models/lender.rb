class Lender < ActiveRecord::Base
	has_and_belongs_to_many :loans

# 	def lender_by_country
# 		@lenders = Lender.select(:)
# 	end 


# Order.select("date(created_at) as ordered_date, sum(price) as total_price").group("date(created_at)")

# 	SELECT date(created_at) as ordered_date, sum(price) as total_price
# FROM orders
# GROUP BY date(created_at)
end
