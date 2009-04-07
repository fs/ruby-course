#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
     class CompareOnSize
       include Comparable
       attr :str
       def <=>(other)
         str.length <=> other.str.length
       end
       def initialize(str)
         @str = str
       end
         def inspect 
           @str.inspect
         end
     end

     s1 = CompareOnSize.new("Z")
     s2 = CompareOnSize.new([1,2])
     s3 = CompareOnSize.new("XXX")

     s1 < s2
     s2.between?(s1, s3)
     s3.between?(s1, s2)
     [ s3, s2, s1 ].sort
