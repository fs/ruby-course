#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
       require 'pstore'
       require 'pp'
def pp(obj)
PP.pp(obj, $stdout, 50)
end
       class T
         def initialize(val, left=nil, right=nil)
           @val, @left, @right = val, left, right
         end
         def to_a
           [ @val, @left.to_a, @right.to_a ]
         end
       end

       store = PStore.new("/tmp/store")
       store.transaction do
          store['names'] = [ 'Douglas', 'Barenberg', 'Meyer' ]
          store['tree']  = T.new('top', 
                             T.new('A', T.new('B')),
                             T.new('C', T.new('D', nil, T.new('E'))))
       end

       # now read it back in

       store.transaction do 
          puts "Roots: #{store.roots.join(', ')}"
          puts store['names'].join(', ')
          pp store['tree'].to_a
       end
