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

        a = (1..100000).map {rand(100000)}

        bm(10) do |b|
          b.report("Sort")    { a.sort }
          b.report("Sort by") { a.sort_by {|a| a} }
        end
