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
        name  = :new_instance_variable
        Thing.module_exec(name) do |iv_name|
          attr_accessor iv_name
        end
        t = Thing.new
        t.new_instance_variable = "wibble"
        p t
