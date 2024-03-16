require "bank_account"

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = BankAccount.new
      initial_balance = account.balance
      deposit_amount = 100
      account.deposit(deposit_amount)
      expect(account.balance).to eq(initial_balance + deposit_amount)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account = BankAccount.new
      account.deposit(200)
      account.withdraw(173)
      expect(account.balance).to eq(27)
    end

    it "does not change the balance if insufficient funds" do
      account = BankAccount.new
      account.deposit(200)
      account.withdraw(202131)
      expect(account.balance).to eq(200)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account = BankAccount.new
      expect(account.balance).to eq(0)
      account.deposit(200)
      expect(account.balance).to eq(200)
    end
  end
end
