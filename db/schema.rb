# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131024213232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lenders", force: true do |t|
    t.string   "name"
    t.integer  "lender_id"
    t.integer  "image_id"
    t.text     "whereabouts"
    t.integer  "image_template_id"
    t.string   "kiva_uid"
    t.datetime "member_since"
    t.text     "personal_url"
    t.text     "occupation"
    t.text     "loan_because"
    t.text     "occupational_info"
    t.integer  "loan_count"
    t.integer  "invitee_count"
    t.integer  "inviter_id",        limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", force: true do |t|
    t.integer  "kivaloan_id"
    t.string   "name"
    t.string   "description_languages"
    t.text     "description_texts_en"
    t.string   "status"
    t.integer  "funded_amount"
    t.string   "basket_amount"
    t.integer  "paid_amount"
    t.integer  "image_id"
    t.integer  "image_template_id"
    t.string   "video"
    t.string   "activity"
    t.string   "sector"
    t.text     "use"
    t.string   "delinquent"
    t.string   "location_country_code"
    t.string   "location_country"
    t.string   "location_town"
    t.string   "location_geo_level"
    t.integer  "location_geo_pairs"
    t.string   "location_geo_type"
    t.integer  "partner_id"
    t.datetime "posted_date"
    t.datetime "planned_expiration_date"
    t.integer  "loan_amount"
    t.integer  "currency_exchange_loss_amount"
    t.string   "borrowers_first_name"
    t.string   "borrowers_last_name"
    t.string   "borrowers_gender"
    t.string   "borrowers_pictured"
    t.datetime "terms_disbursal_date"
    t.string   "terms_disbursal_currency"
    t.integer  "terms_disbursal_amount"
    t.string   "terms_repayment_interval"
    t.integer  "terms_repayment_term"
    t.integer  "terms_loan_amount"
    t.string   "terms_loss_liability_nonpayment"
    t.string   "terms_loss_liability_currency_exchange"
    t.string   "terms_loss_liability_currency_exchange_coverage_rate"
    t.datetime "funded_date"
    t.datetime "paid_date"
    t.integer  "journal_totals_entries"
    t.integer  "journal_bulkEntries"
  end

end
