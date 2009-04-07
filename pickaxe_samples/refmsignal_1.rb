#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
     pid = fork do
       Signal.trap("USR1") do
         $debug = !$debug
         puts "Debug now: #$debug"
       end
       Signal.trap(:TERM) do   # symbols work too...
         puts "Terminating..."
         exit
       end
       Thread.pass while true
       # . . . do some work . . .
     end

     Process.detach(pid)

     # Controlling program:
     Process.kill("USR1", pid)
 10000.times { Thread.pass } 
     # ...
     Process.kill(:USR1, pid)
 100000.times { Thread.pass }
     # ...
     Process.kill("TERM", pid)
 10000000.times { Thread.pass }
