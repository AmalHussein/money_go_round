# ["id",
#  "name",
#  "description",
#  "status",
#  "funded_amount",
#  "basket_amount",
#  "paid_amount",
#  "image",
#  "video",
#  "activity",
#  "sector",
#  "use",
#  "delinquent",
#  "location",
#  "partner_id",
#  "posted_date",
#  "planned_expiration_date",
#  "loan_amount",
#  "currency_exchange_loss_amount",
#  "bonus_credit_eligibility",
#  "borrowers",
#  "terms",
#  "payments",
#  "funded_date",
#  "paid_date",
#  "journal_totals"]


# loans.id = kiva_loan["id"] #number
# loans.name = kiva_loan["name"] #sting
# loans.description_languages = kiva_loan["description"]["languages"] #string
# loans.description_texts_en = kiva_loan["description"]["texts"]['en'] #text
# loans.status = kiva_loan["status"] #string
# loans.funded_amount = kiva_loan["funded_amount"] #number
# loans.basket_amount = kiva_loan["basket_amount"] #string
# loans.paid_amount = kiva_loan["paid_amount"] #number
# loans.image_id = kiva_loan["image"]["id"] #num
# loans.image_template_id = kiva_loan["image"]["template_id"] #num
# loans.video = kiva_loan["video"] #string
# loans.activity = kiva_loan["activity"] #string
# loans.sector = kiva_loan["sector"] #string
# loans.use = kiva_loan["use"] #text
# loans.delinquent = kiva_loan["delinquent"] #string
# loans.location_country_code = kiva_loan['location']['country_code'] #string
# loans.location_country = kiva_loan['location']['country'] #string
# loans.location_town = kiva_loan['location']['town'] #string
# loans.location_geo_level = kiva_loan['location']['geo']['level'] #string
# loans.location_geo_pairs = kiva_loan['location']['geo']['pairs']  #bigint
# loans.location_geo_type = kiva_loan['location']['geo']['type'] #string
# loans.partner_id = kiva_loan['partner_id'] #num
# loans.posted_date = kiva_loan['posted_date'] #datetime
# loans.planned_expiration_date = kiva_loan['planned_expiration_date'] #datetime
# loans.loan_amount = kiva_loan['loan_amount'] #num
# loans.currency_exchange_loss_amount = kiva_loan['currency_exchange_loss_amount'] #num
# loans.borrowers_first_name= kiva_loan['borrowers'].first['first_name']  #string
# loans.borrowers_last_name= kiva_loan['borrowers'].first['last_name'] #string
# loans.borrowers_gender= kiva_loan['borrowers'].first['gender'] #string
# loans.borrowers_pictured= kiva_loan['borrowers'].first['pictured']  #string
# loans.terms_disbursal_date = kiva_loan['terms']['disbursal_date']  #datetime
# loans.terms_disbursal_currency = kiva_loan['terms']['disbursal_currency']	 #string
# loans.terms_disbursal_amount = kiva_loan['terms']['disbursal_amount']  #num
# loans.terms_repayment_interval = kiva_loan['terms']['repayment_interval'] #string
# loans.terms_repayment_term = kiva_loan['terms']['repayment_term'] #num
# loans.terms_loan_amount = kiva_loan['terms']['loan_amount'] #num
# loans.terms_loss_liability_nonpayment = kiva_loan['terms']['loss_liability']['nonpayment']
# loans.terms_loss_liability_currency_exchange = kiva_loan['terms']['loss_liability']['currency_exchange']
# loans.terms_loss_liability_currency_exchange_coverage_rate = kiva_loan['terms']['loss_liability']['curreny_exchange_coverage_rate']
# loans.funded_date = kiva_loan['funded_date'] #datetime
# loans.paid_date = kiva_loan['paid_date'] #datetime
# loans.journal_totals_entries = kiva_loan['journal_totals']['entries'] #numb
# loans.journal_bulkEntries = kiva_loan['journal_totals']['bulkEntries'] #numb


# #setting up data for local payments & scheduled payments as two seperate tables 
# # loans.terms_local_payments_due_date = kiva_loan['terms']['local_payments'][0]['due_date']
# # loans.terms_local_payments_amount = kiva_loan['terms']['local_payments'][0]['amount']
# # loans.terms_scheduled_payments_due_date = kiva_loan['terms']['scheduled_payments'][0]['due_date']
# # loans.terms_scheduled_payments_amount = kiva_loan['terms']['scheduled_payments'][0]['amount']

