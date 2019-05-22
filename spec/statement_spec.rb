require 'statement.rb' # frozen_string_literal: true

describe Statement do
  let(:account_double){double(transactions: [date: '02/05/2019', deposit: '500.00', withdraw: '100.00', balance: '400.00'])}
  let(:subject){described_class.new(account_double)}
  it 'can print the statement' do
    expect(subject.print).to eq 'date || deposit || withdraw || balance\n02/05/2019 || 500.00 || 100.00 || 400.00\n'
  end
end
