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

  LOOP_COUNT = 1_000_000

  bmbm(12) do |test|
    test.report("inline:")    do
      LOOP_COUNT.times do |x|
        # nothing
      end
    end
    test.report("method:") do
      def method
        # nothing
      end
      LOOP_COUNT.times do |x|
        method
      end
    end
  end
