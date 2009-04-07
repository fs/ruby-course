#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
     require 'forwardable'

     class SymbolTable
       extend Forwardable
       def_delegator(:@hash, :[],  :lookup)
       def_delegator(:@hash, :[]=, :add)
       def_delegators(:@hash, :size, :has_key?)
       def initialize
         @hash = Hash.new
       end
     end

     st = SymbolTable.new
     st.add('cat', 'feline animal')
     st.add('dog', 'canine animal')
     st.add('cow', 'bovine animal')

     st.has_key?('cow')
     st.lookup('dog')
