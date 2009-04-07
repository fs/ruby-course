#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  require 'benchmark'
  include Benchmark

  test = "Stormy Weather"
  m = test.method(:length)
  n = 100000

  bm(12) {|x|
    x.report("call") { n.times { m.call } }
    x.report("send") { n.times { test.send(:length) } }
    x.report("eval") { n.times { eval "test.length" } }
  }
