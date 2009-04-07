#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  def a
    print "Function 'a' called\n"
    99
  end
 
  for i in 1..2
    if i == 2
      print "a=", a, "\n"
    else
      a = 1
      print "a=", a, "\n"
    end
  end 
