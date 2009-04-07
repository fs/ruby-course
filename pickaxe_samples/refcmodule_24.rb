#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class Thing
        end
        a = %q{def hello() "Hello there!" end}
        Thing.module_eval(a)
        puts Thing.new.hello()
#        Thing.module_eval("invalid code", "dummy", 123)
      begin
        Thing.module_eval("invalid code", "dummy", 123)
      rescue Exception => e
        puts %{#{e.backtrace[0]}: #{e.to_s.sub(/or method/, "\n    or method")}}
      end
