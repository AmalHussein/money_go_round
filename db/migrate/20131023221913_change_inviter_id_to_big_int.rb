class ChangeInviterIdToBigInt < ActiveRecord::Migration
  def change
  	change_column :lenders, :inviter_id, :integer , :limit => 8
  end
end
