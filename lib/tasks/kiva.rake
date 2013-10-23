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
  		lenders.each do |lender|
  			binding.pry
  			Lender.find_or_create_by(kiva_uid: lender["uid"]) do |lender|
  				lender.name = lender["name"]
  				lender.lender_id = lender["lender_id"]
  				lender.image_id = lender["image"]["id"]
  				lender.whereabouts = lender["whereabouts"]
  				lender.image_template_id = lender["image"]["template_id"]
  				lender.kiva_uid = lender["uid"]
  				lender.member_since = lender["member_since"]
  				lender.personal_url = lender["personal_url"]
  				lender.occupation = lender["occupation"]
  				lender.loan_because = lender["loan_because"]
  				lender.occupational_info = lender["occupational_info"]
  				lender.loan_count = lender["loan_count"]
  				lender.inviter_id = lender["inviter_id"]
  				lender.invitee_count = lender["invitee_count"]
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
