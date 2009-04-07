#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         module Mod
           def hello
             "Hello from Mod.\n"
           end
         end
         
         class Klass
           def hello
             "Hello from Klass.\n"
           end           
         end
         
         k = Klass.new
         k.hello
         k.extend(Mod)
         k.hello
