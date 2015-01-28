class RemoveTotalFromBankRegisters < ActiveRecord::Migration
  def change
    remove_column :bank_registers, :total

  end
end
