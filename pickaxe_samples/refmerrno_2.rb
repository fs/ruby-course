#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      class Array
        def inspect
          s = self.to_a.collect{|i| i.to_s}.sort[0,7].join(', ')
          s.inspect.gsub('"', '') + ", ..."
        end
      end
    Errno.constants
