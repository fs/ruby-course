#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
#require 'roman'
 $: << "code"
 require 'code/romanbug'
require 'test/unit'
class TestRoman < MiniTest::Unit::TestCase
  def test_simple
    assert_equal("i",  Roman.new(1).to_s)
    assert_equal("ix", Roman.new(9).to_s)
  end
end
