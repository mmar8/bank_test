# frozen_string_literal: true

# class statement
class Statement

  def initialize(account)
    @account = account
  end

  def statement_print
      header = 'date || deposit || withdraw || balance\n'
      @account.transactions.reverse_each do |tr|
      "#{tr[:date]} || #{tr[:deposit]} || #{tr[:withdraw]} || #{tr[:balance]}\n"
    end
    header
  end
end
