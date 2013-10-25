class CreateLoans < ActiveRecord::Migration
	def change
		create_table :loans do |t|
			t.integer :kivaloan_id 
			t.string :name 
			t.string :description_languages 
			t.text   :description_texts_en     
			t.string :status        
			t.integer :funded_amount      
			t.string  :basket_amount 
			t.integer  :paid_amount     
			t.integer  :image_id     
			t.integer  :image_template_id     
			t.string :video         
			t.string  :activity 
			t.string   :sector 
			t.text 			:use     
			t.string :delinquent 
			t.string   :location_country_code 
			t.string  :location_country 
			t.string    :location_town 
			t.string   :location_geo_level 
			t.integer :location_geo_pairs , :limit => 8
			t.string  :location_geo_type 
			t.integer  :partner_id 
			t.datetime  :posted_date 
			t.datetime   :planned_expiration_date 
			t.integer    :loan_amount 
			t.integer    :currency_exchange_loss_amount 
			t.string   :borrowers_first_name 
			t.string   :borrowers_last_name 
			t.string   :borrowers_gender 
			t.string   :borrowers_pictured 
			t.datetime  :terms_disbursal_date 
			t.string   :terms_disbursal_currency 
			t.integer  :terms_disbursal_amount 
			t.string   :terms_repayment_interval 
			t.integer  :terms_repayment_term 
			t.integer  :terms_loan_amount 
			t.string    :terms_loss_liability_nonpayment 
			t.string    :terms_loss_liability_currency_exchange 
			t.string  :terms_loss_liability_currency_exchange_coverage_rate 
			t.datetime :funded_date 
			t.datetime  :paid_date
			t.integer   :journal_totals_entries
			t.integer   :journal_bulkEntries
		end
	end
end
