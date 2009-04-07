#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  def meth_two(arg)
    case   #!sh!
    when arg > 0  then "positive"
    when arg < 0  then "negative"
    else               "zero"
    end
  end

  meth_two(23)
  meth_two(0)
