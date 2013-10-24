class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
    	t.integer :kivaloan_id 
      t.string :name 
      t.string :description_languages 
      t.text   :description_texts_en     = kiva_loan["description"]["texts"]['en'] #text
      t.string :status        = kiva_loan["status"] #string
      t.integer :funded_amount       = kiva_loan["funded_amount"] #number
      t.string  :basket_amount = kiva_loan["basket_amount"] #string
      t.integer  :paid_amount     = kiva_loan["paid_amount"] #number
      t.integer  :image_id     = kiva_loan["image"]["id"] #num
      t.integer  :image_template_id      = kiva_loan["image"]["template_id"] #num
      t.string :video          = kiva_loan["video"] #string
      t.string  :activity = kiva_loan["activity"] #string
      t.string   :sector = kiva_loan["sector"] #string
      t.text :use     = kiva_loan["use"] #text
      t.string :delinquent = kiva_loan["delinquent"] #string
      t.string   :location_country_code = kiva_loan['location']['country_code'] #string
      t.string  :location_country 
      t.sting    :location_town 
      t.string   :location_geo_level 
      t.bigint :location_geo_pairs  
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
