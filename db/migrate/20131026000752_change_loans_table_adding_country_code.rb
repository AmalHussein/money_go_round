class ChangeLoansTableAddingCountryCode < ActiveRecord::Migration
  def change
  	 add_column :lenders, :country_code, :string 
  end
end
