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
          string = "Stormy Weather"
          m = string.method(:length)
          bm(6) do |x|
            x.report("direct") { 100_000.times { string.length } }
            x.report("call")   { 100_000.times { m.call } }
            x.report("send")   { 100_000.times { string.send(:length) } }
            x.report("eval")   { 100_000.times { eval "string.length" } }
          end
