class CreateBankRegisters < ActiveRecord::Migration
  def change
    create_table :bank_registers do |t|
      t.string :transaction_name
      t.float :transaction_amount
      t.float :total

      t.timestamps null: false
    end
  end
end
