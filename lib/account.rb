# frozen_string_literal: true

# class account
class Account
  attr_reader :transactions

  def initialize
    @transactions = []
  end
end
