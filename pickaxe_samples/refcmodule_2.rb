#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        module Mixin
          CONST_MIXIN = 1
        end
        class Module
          include Mixin
          SPURIOUS_CONSTANT = 2
        end
        Module.constants.sort[1..5]
        Module.constants.include? :CONST_MIXIN
        Module.constants(false)
        Module.constants(true)
