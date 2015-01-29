class BankRegister < ActiveRecord::Base

 validates :transaction_amount, presence: true
 validates :transaction_name, presence: true

  def self.balance
    sum(:transaction_amount)
  #   all = BankRegister.all
  #   balance = 0
  #   all.each do |b|
  #     balance += b.transaction_amount
  #   end
  #   return balance
   end

end
