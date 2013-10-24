class ChangeInviterIdToBigInt < ActiveRecord::Migration
  def change
  	change_column :lenders, :inviter_id, :bigint
  end
end
