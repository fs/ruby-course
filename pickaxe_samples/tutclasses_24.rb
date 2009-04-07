#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class Account
      attr_accessor :balance
      def initialize(balance)
        @balance = balance
      end
  end

  class Transaction

      def initialize(account_a, account_b)
        @account_a = account_a
        @account_b = account_b
      end

    private

      def debit(account, amount)
        account.balance -= amount
      end
      def credit(account, amount)
        account.balance += amount
      end

    public

      #...
      def transfer(amount)
        debit(@account_a, amount)
        credit(@account_b, amount)
      end
      #...
  end

  savings = Account.new(100)
  checking = Account.new(200)

  trans = Transaction.new(checking, savings)
  trans.transfer(50)
