# frozen_string_literal: true

# class statement
class Statement

  def initialize(account)
    @account = account
  end

  def print
    statement_print
  end

private
  def statement_print
      header = 'date || deposit || withdraw || balance\n'
      @account.transactions.reverse_each do |tr|
      p "#{tr[:date]} || #{tr[:deposit]} || #{tr[:withdraw]} || #{tr[:balance]}\n"
    end
    header
  end
end
