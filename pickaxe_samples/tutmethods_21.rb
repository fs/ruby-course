#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  def five(a, b, c, d, e)
    "I was passed #{a} #{b} #{c} #{d} #{e}"
  end

  five(1, 2, 3, 4, 5 )
  five(1, 2, 3, *['a', 'b'])
  five(*['a', 'b'], 1, 2, 3)
  five(*(10..14))
  five(*[1,2], 3, *(4..5))
