#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         class Demo
           def initialize(n)
             @iv = n
           end
           def hello()
             "Hello, @iv = #{@iv}"
           end
         end
         
         k = Demo.new(99)
         m = k.method(:hello)
         m.call
         
         l = Demo.new('Fred')
         m = l.method("hello")
         m.call
