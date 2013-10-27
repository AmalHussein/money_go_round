class RenameTheLoansLendersTable < ActiveRecord::Migration
  def change
  	rename_table :loans_lenders, :loan_lenders
  end
end
