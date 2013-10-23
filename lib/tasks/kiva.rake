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
  			Lender.find_or_create_by(kiva_uid: kiva_lender["uid"]) do |lender|
  				puts "Importing: #{lender["name"]}"
  				lender.name = kiva_lender["name"]
  				lender.lender_id = kiva_lender["lender_id"]
  				lender.image_id = kiva_lender["image"]["id"]
  				lender.whereabouts = kiva_lender["whereabouts"]
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
  		end
  	end
  end

  desc "Imports all loans from json"
  task import_json_loans: :environment do
  	basedir = "#{Rails.root}/data/loans"
  	json_files = Dir.new(basedir).entries
  	binding.pry
  end

  desc "Imports all loans-lenders from json"
  task import_json_loans_lenders: :environment do
  	basedir = "#{Rails.root}/data/loans_lenders"
  	json_files = Dir.new(basedir).entries
  	binding.pry
  end

end
