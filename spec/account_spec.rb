require 'account.rb' # frozen_string_literal: true

describe Account do
  it 'returns empty transaction history' do
    account = Account.new
    expect(account.transactions).to eq([])
  end

  context 'deposit 100' do
    it 'deposit 100' do
      account = Account.new
      account.deposit(100, '01/05/2019')
      expect(account.transactions).to eq([{ date: '01/05/2019', credit: '100.00', debit: '', balance: '100.00' }])
    end

    it 'deposit 200' do 
      account = Account.new
      account.deposit(200, '02/05/2019')
      expect(account.transactions).to eq([{ date: '02/05/2019', credit: '200.00', debit: '', balance: '200.00' }])
    end

    it 'deposit 250.20' do 
      account = Account.new
      account.deposit(250.20, '03/05/2019')
      expect(account.transactions).to eq([{ date: '03/05/2019', credit: '250.20', debit: '', balance: '250.20' }])
    end
  end
end
