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
          bmbm(6) do |x|
            x.report("all") do
               str = File.read("/usr/share/dict/words")
               words = str.scan(/[-\w']+/)
            end
            x.report("lines") do
              words = []
              File.foreach("/usr/share/dict/words") do |line|
                words << line.chomp
              end
            end
          end
