require 'date' # frozen_string_literal: true

# class transaction
class Transactions

  attr_reader :date, :deposit, :withdraw, :balance
  def initialize( date = Date.today, deposit, withdraw, balance)
    @date = date
    @deposit = deposit
    @withdraw = withdraw
    @balance = balance
  end
end
