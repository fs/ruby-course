#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class Test
        end
        Test.class_eval do
          define_method(:one) { puts "instance method" }
          define_singleton_method(:two) { puts "class method" }
        end
        t = Test.new
        t.one
        Test.two
