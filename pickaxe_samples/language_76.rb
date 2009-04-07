#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
def meth
  res = yield 
  "The block returns #{res}"
end

meth { next 99 }

pr = Proc.new { next 99 }
pr.call

pr = lambda { next 99 }
pr.call

pr = ->() { next 99 }
pr.call
