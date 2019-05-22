require 'account.rb' # frozen_string_literal: true

describe Account do
  before(:each) do
    @account = Account.new
  end

  it 'returns empty transaction history' do
    expect(@account.transactions).to eq([])
  end

  context 'deposits into account' do
    it 'deposit 100' do
      @account.deposit(100, '01/05/2019')
      expect(@account.transactions).to eq([{ date: '01/05/2019', credit: '100.00', debit: '', balance: '100.00' }])
    end

    it 'deposit 200' do
      @account.deposit(200, '02/05/2019')
      expect(@account.transactions).to eq([{ date: '02/05/2019', credit: '200.00', debit: '', balance: '200.00' }])
    end

    it 'deposit 250.20' do
      @account.deposit(250.20, '03/05/2019')
      expect(@account.transactions).to eq([{ date: '03/05/2019', credit: '250.20', debit: '', balance: '250.20' }])
    end
  end

  context 'withdraw from account' do
    before(:each) do
      @account.deposit(500, '01/05/2019')
    end 

    it 'withdraws 100' do
      @account.withdraw(100, '01/05/2019')
      array = [
        { date: '01/05/2019', credit: '500.00', debit: '', balance: '500.00' },
        { date: '01/05/2019', credit: '', debit: '100.00', balance: '400.00' }
      ]
      expect(account.transactions).to eq(array)
    end

    it 'withdraws 200' do
      @account.withdraw(200, '01/05/2019')
      array = [
        { date: '01/05/2019', credit: '500.00', debit: '', balance: '500.00' },
        { date: '01/05/2019', credit: '', debit: '200.00', balance: '300.00' }
      ]
      expect(account.transactions).to eq(array)
    end

    it 'withdraws 300' do
      @account.withdraw(300, '01/05/2019')
      array = [
        { date: '01/05/2019', credit: '500.00', debit: '', balance: '500.00' },
        { date: '01/05/2019', credit: '', debit: '300.00', balance: '200.00' }
      ]
      expect(@account.transactions).to eq(array)
    end
  end
end
