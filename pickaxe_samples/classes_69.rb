#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  a = "hello"
  b = a.dup
  def a.to_s
    "The value is '#{self}'"
  end
  def a.two_times
    self + self
  end
  
  a.to_s
  a.two_times
  b.to_s
