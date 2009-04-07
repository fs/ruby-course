#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        fork { exit 99 }
        Process.wait
        puts "Child exits with status: #{$?.exitstatus}"
         begin
           exit
           puts "never get here"
         rescue SystemExit
           puts "rescued a SystemExit exception"
         end
         puts "after begin block"
