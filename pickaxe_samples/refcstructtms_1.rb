#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        def eat_cpu
          100_000.times { Math.sin(0.321) } 
        end
        3.times { fork { eat_cpu } }  #!sh!
        eat_cpu   #!sh!
        Process.waitall   #!sh!
        t = Process::times
        [ t.utime, t.stime]
        [ t.cutime, t.cstime ]
