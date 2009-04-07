#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
 $: << "code"
require 'test/unit'
class Filter
  def puts(arg="")
    STDOUT.puts(arg) if arg =~ /Finished|assertions/
  end

  def print(*)
  end
end
MiniTest::Unit.output = Filter.new
require 'test/unit'
require 'addcust'

class TestAddCustomer < Test::Unit::TestCase

  def test_add
    c = Customer.new("Ima", "Customer")
    f = ""
    c.append_name_to_file(f)
    assert_equal("Ima Customer", f)
  end
end
