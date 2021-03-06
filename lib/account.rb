require_relative 'statement' # frozen_string_literal: true

# class account
class Account
  attr_reader :transactions, :balance

  def initialize
    @transactions = []
    @balance = 0.00
  end

  def deposit(amount, date)
    @balance += amount
    tr = { date: date, credit: '%.2f' % amount, debit: '', balance: '%.2f' % @balance }
    @transactions.push(tr)
  end

  def withdraw(amount, date)
    @balance -= amount
    tr = { date: date, credit: '', debit: '%.2f' % amount, balance: '%.2f' % @balance }
    @transactions.push(tr)
  end

  def statement_print
    puts Statement.statement_print
  end
end
