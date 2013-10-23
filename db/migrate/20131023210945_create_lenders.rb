class CreateLenders < ActiveRecord::Migration
  def change
    create_table :lenders do |t|
      t.string :name
      t.integer :lender_id
      t.integer :image_id
      t.text :whereabouts
      t.integer :image_template_id
      t.string :kiva_uid
      t.datetime :member_since
      t.text :personal_url
      t.text :occupation
      t.text :loan_because
      t.text :occupational_info
      t.integer :loan_count
      t.integer :invitee_count
      t.integer :inviter_id

      t.timestamps
    end
  end
end
