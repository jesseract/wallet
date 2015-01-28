class Decimal < ActiveRecord::Migration
  def change
    change_column :bank_registers, :transaction_amount, :decimal, precision: 10, scale: 2

  end
end
