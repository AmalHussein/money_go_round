namespace :kiva do
  desc "Imports all lenders from json"
  task import_json_lenders: :environment do
  	basedir = "#{Rails.root}/data/lenders"
  	contains = Dir.new(basedir).entries
  	binding.pry
  end

  desc "Imports all loans from json"
  task import_json_loans: :environment do
  	basedir = "#{Rails.root}/data/loans"
  	contains = Dir.new(basedir).entries
  	binding.pry
  end

  desc "Imports all loans-lenders from json"
  task import_json_loans_lenders: :environment do
  	basedir = "#{Rails.root}/data/loans_lenders"
  	contains = Dir.new(basedir).entries
  	binding.pry
  end

end
