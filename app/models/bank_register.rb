class BankRegister < ActiveRecord::Base
  def self.balance
    # sum(:transaction_amount)
    all = BankRegister.all
    balance = 0
    all.each do |b|
      balance += b.transaction_amount
    end
    return balance
  end

end
