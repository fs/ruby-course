#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
class Shape
  def self.triangle(side_length)
    Shape.new(3, side_length*3)
  end
  def self.square(side_length)
    Shape.new(4, side_length*4)
  end
end
