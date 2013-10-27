	class CreateLoansLendersJoinTable < ActiveRecord::Migration
	  def change
	  	create_table :loans_lenders, id: false do |t|
	  		t.integer :kivaloan_id 
	  		t.string :kiva_uid
	  end
	  add_index :loans_lenders , :kivaloan_id
	  add_index :loans_lenders , :kiva_uid
	  add_index :loans_lenders , [:kivaloan_id, :kiva_uid]
	end 
end


