require 'transaction.rb' # frozen_string_literal: true

describe Transaction do
  it 'stores deposit amount' do
    transaction = Transaction.new('02/05/2019', 500.00, '', 500.00)
    expect(transaction.deposit).to eq(500.00)
  end

  it 'stores withdrawl amount' do
    transaction = Transaction.new('02/05/2019', 500.00, '', 500.00)
    expect(transaction.withdraw).to eq('')
  end

  it 'stores the date' do
    transaction = Transaction.new('02/05/2019', 500.00, '', 500.00)
    expect(transaction.date).to eq('02/05/2019')
  end
  
  it 'stores balance' do
    transaction = Transaction.new('02/05/2019', 500.00, '', 500.00)
    expect(transaction.balance).to eq(500.00)
  end
end
