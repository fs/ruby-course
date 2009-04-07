#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        pipe = IO.popen("-")
        if pipe
          STDERR.puts "In parent, child pid is #{pipe.pid}"
          pipe.close
        else
          STDERR.puts "In child, pid is #{$$}"
        end
