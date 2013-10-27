class ChangeLenderIdColumnTypeInJoinTable < ActiveRecord::Migration
  def change
  	  	change_column :loan_lenders, :kiva_uid, :text 
  end
end
