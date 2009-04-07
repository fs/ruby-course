#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      $stdout.sync = true
      fork do
        3.times {|i| puts "Child: #{i}\n"; sleep 0.05 }
#        3.times {|i| puts "Child: #{i}" }
      end
      3.times {|i| puts "Parent: #{i}\n"; sleep rand(0.1) }
#      3.times {|i| puts "Parent: #{i}" }
      Process.wait
