#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
#        pid = spawn("echo hello")
        pid = spawn("sleep 0.1; echo hello")
        puts "Back in main program"
 STDOUT.flush
        rc, status = Process::waitpid2(pid)
        puts "Status = #{status}"
