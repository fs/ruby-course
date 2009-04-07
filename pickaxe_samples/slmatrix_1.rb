#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'matrix'
class Rational
def inspect
to_s
end
end

m1 = Matrix[ [2, 1], [-1, 1] ]

m1[0,1]
 
m1.inv

m1 * m1.inv

m1.determinant

m1.singular?

v1 = Vector[3, 4]

v1.covector

m1 * v1

m2 = Matrix[ [1,2,3], [4,5,6], [7,8,9] ]

m2.minor(1, 2, 1, 2)

