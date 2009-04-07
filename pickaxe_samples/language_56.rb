#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
class String
def inspect
to_s
end
end
  def regular(a, b, *c)
    "a=#{a}, b=#{b}, c=#{c}"
  end
  regular 1, 2, 3, 4
  regular(1, 2, 3, 4)
  regular(1, *[2, 3, 4])
  regular(1, *[2, 3], 4)
  regular(1, *[2, 3], *4)
  regular(*[], 1, *[], *[2, 3], *[], 4)
