class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.float :amount
      t.integer :payer_id
      t.text :description
      t.integer :beneficiary_id

      t.timestamps

    end
  end
end
