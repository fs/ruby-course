#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  module Kernel
    alias_method :old_system, :system
    def system(*args)
      result = old_system(*args)
      puts "system(#{args.join(', ')}) returned #{result.inspect}"
      result
    end
  end
  
  system("date")
  system("kangaroo", "-hop 10", "skippy")
