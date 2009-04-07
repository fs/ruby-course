#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        internal_method = "cat".method(:upcase)
        internal_method.source_location
        
        require 'set'
        set = Set.new
        ruby_method = set.method(:clear)
 def ruby_method.source_location
 res =  super
 res[0] = res[0].sub(%{/local/rubybook}, '')
 res
 end
        ruby_method.source_location
