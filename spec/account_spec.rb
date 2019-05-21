require 'account.rb' # frozen_string_literal: true

describe Account do
  it 'returns empty transaction history' do
    account = Account.new
    expect(account.transactions).to eq([])
  end
end
