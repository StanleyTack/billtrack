class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :payee_id
      t.float :amount
      t.integer :payer_id

      t.timestamps

    end
  end
end
