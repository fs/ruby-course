#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  def n_times(thing)
    lambda {|n| thing * n }
  end

  p1 = n_times(23)
  p1.call(3)
  p1.call(4)
  p2 = n_times("Hello ")
  p2.call(3)
