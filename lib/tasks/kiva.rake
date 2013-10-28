require 'json'

namespace :kiva do
  desc "Imports all lenders from json"
  task import_json_lenders: :environment do
  	basedir = "#{Rails.root}/data/lenders"
  	json_files = Dir.new(basedir).entries
  	json_files.delete(".")
  	json_files.delete("..")
  	json_files.each do |json_file|
  		lenders = JSON.parse(IO.read "#{basedir}/#{json_file}")["lenders"]
  		lenders.each do |kiva_lender|
        begin
          Lender.create! do |lender|
            puts "Importing: #{kiva_lender["name"]}"
            lender.kiva_uid = kiva_lender["uid"]
            lender.name = kiva_lender["name"]
            lender.lender_id = kiva_lender["lender_id"]
            lender.image_id = kiva_lender["image"]["id"]
            lender.whereabouts = kiva_lender["whereabouts"]
            lender.country_code= kiva_lender["country_code"]
            lender.image_template_id = kiva_lender["image"]["template_id"]
            lender.kiva_uid = kiva_lender["uid"]
            lender.member_since = kiva_lender["member_since"]
            lender.personal_url = kiva_lender["personal_url"]
            lender.occupation = kiva_lender["occupation"]
            lender.loan_because = kiva_lender["loan_because"]
            lender.occupational_info = kiva_lender["occupational_info"]
            lender.loan_count = kiva_lender["loan_count"]
            lender.inviter_id = kiva_lender["inviter_id"]
            lender.invitee_count = kiva_lender["invitee_count"]
          end
        rescue Exception => e
          puts "Exception #{e} for lender name #{kiva_lender['name']}"
          puts "Don't stop adding lenders!!!"
        end
      end
    end
  end


  desc "Imports all loans from json"
  task import_json_loans: :environment do
  	basedir = "#{Rails.root}/data/loans"
  	json_files = Dir.new(basedir).entries
  	json_files.delete(".")
  	json_files.delete("..")
  	json_files.each do |json_file|
  		loans = JSON.parse(IO.read "#{basedir}/#{json_file}")["loans"]
  		loans.each do |kiva_loan|
        begin 
          Loan.create! do |loan|
            puts "Importing: #{kiva_loan["name"]}"
          loan.kivaloan_id = kiva_loan["id"] #number
          loan.name = kiva_loan["name"] #sting
          loan.description_languages = kiva_loan["description"]["languages"].first #string
          loan.description_texts_en = kiva_loan["description"]["texts"]['en'] #text
          loan.status = kiva_loan["status"] #string
          loan.funded_amount = kiva_loan["funded_amount"] #number
          loan.basket_amount = kiva_loan["basket_amount"] #string
          loan.paid_amount = kiva_loan["paid_amount"] #number
          loan.image_id = kiva_loan["image"]["id"] #num
          loan.image_template_id = kiva_loan["image"]["template_id"] #num
          loan.video = kiva_loan["video"] #string
          loan.activity = kiva_loan["activity"] #string
          loan.sector = kiva_loan["sector"] #string
          loan.use = kiva_loan["use"] #text
          loan.delinquent = kiva_loan["delinquent"] #string
          loan.location_country_code = kiva_loan['location']['country_code'] #string
          loan.location_country = kiva_loan['location']['country'] #string
          loan.location_town = kiva_loan['location']['town'] #string
          loan.location_geo_level = kiva_loan['location']['geo']['level'] #string
          loan.location_geo_pairs = kiva_loan['location']['geo']['pairs']  #bigint
          loan.location_geo_type = kiva_loan['location']['geo']['type'] #string
          loan.partner_id = kiva_loan['partner_id'] #num
          loan.posted_date = kiva_loan['posted_date'] #datetime
          loan.planned_expiration_date = kiva_loan['planned_expiration_date'] #datetime
          loan.loan_amount = kiva_loan['loan_amount'] #num
          loan.currency_exchange_loss_amount = kiva_loan['currency_exchange_loss_amount'] #num
          loan.borrowers_first_name= kiva_loan['borrowers'].first['first_name']  #string
          loan.borrowers_last_name= kiva_loan['borrowers'].first['last_name'] #string
          loan.borrowers_gender= kiva_loan['borrowers'].first['gender'] #string
          loan.borrowers_pictured= kiva_loan['borrowers'].first['pictured']  #string
          loan.terms_disbursal_date = kiva_loan['terms']['disbursal_date']  #datetime
          loan.terms_disbursal_currency = kiva_loan['terms']['disbursal_currency']  #string
          loan.terms_disbursal_amount = kiva_loan['terms']['disbursal_amount']  #num
          loan.terms_repayment_interval = kiva_loan['terms']['repayment_interval'] #string
          loan.terms_repayment_term = kiva_loan['terms']['repayment_term'] #num
          loan.terms_loan_amount = kiva_loan['terms']['loan_amount'] #num
          loan.terms_loss_liability_nonpayment = kiva_loan['terms']['loss_liability']['nonpayment']
          loan.terms_loss_liability_currency_exchange = kiva_loan['terms']['loss_liability']['currency_exchange']
          loan.terms_loss_liability_currency_exchange_coverage_rate = kiva_loan['terms']['loss_liability']['curreny_exchange_coverage_rate']
          loan.funded_date = kiva_loan['funded_date'] #datetime
          loan.paid_date = kiva_loan['paid_date'] #datetime
          loan.journal_totals_entries = kiva_loan['journal_totals']['entries'] #numb
          loan.journal_bulkEntries = kiva_loan['journal_totals']['bulkEntries'] #numb
        end
      rescue Exception => e
       puts "Exception #{e} for lender name #{kiva_loan['name']}"
       puts "Don't stop adding loans!!!"
     end
   end 
 end
end 



desc "Imports all loans_lenders from json"
task import_json_loans_lenders: :environment do
 basedir = "#{Rails.root}/data/loans_lenders"
 json_files = Dir.new(basedir).entries
 json_files.delete(".")
 json_files.delete("..")
 json_files.each do |json_file|
  loans_lenders = JSON.parse(IO.read "#{basedir}/#{json_file}")["loans_lenders"]
  loans_lenders.each do |kivaloan_lender|
    begin 
      LoanLender.create! do |loan_lender|
        puts "Importing: #{kivaloan_lender["id"]}"
        loan_lender.kivaloan_id = kivaloan_lender["id"]
        loan_lender.kiva_uid = kivaloan_lender["lender_ids"].map(&:inspect).join(', ')
      end
    rescue Exception => e
     puts "Exception #{e} for lender name #{kivaloan_lender["id"]}"
     puts "Don't stop adding loan_lender relationship !!!"
   end
 end 
end

end

end

