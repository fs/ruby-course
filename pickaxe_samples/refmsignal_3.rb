#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
          def do_something
            10000.times { "cat" }
          end
        Signal.trap(0, lambda { |signo| puts "exit pid #{$$} with #{signo}" })
        Signal.trap("CLD")  { |signo| puts "Child died (#{signo})" }
        if fork   # parent
          do_something # ...
        else
          puts "In child, PID=#{$$}"
        end
