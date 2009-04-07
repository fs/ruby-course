#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         def a
           raise "boom"
         end

         def b
           a()
         end

         begin
           b()
         rescue => detail
#           print detail.backtrace.join("\n")
           print detail.backtrace.join("\n").gsub(/-:/, 'prog.rb:')
         end
