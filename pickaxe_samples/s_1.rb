#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
 $: << "code/ext/simple"
require 'test/unit'
class Filter
  def puts(arg="")
    STDOUT.puts(arg) if arg =~ /Finished|assertions/
  end

  def print(*)
  end
end
MiniTest::Unit.output = Filter.new
require 'my_test'
require 'test/unit'

class TestTest < Test::Unit::TestCase

  def test_test
    t = MyTest.new
    assert_equal(Object, MyTest.superclass)
    assert_equal(MyTest, t.class)

    t.add(1)
    t.add(2)

    assert_equal([1,2], t.instance_eval("@arr"))
  end
end
