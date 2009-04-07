#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  for a in [13, -13, 11.5, -11.5]
    for b in [4, -4]
      q, r = a.divmod(b)
      print "#{a} & #{b} &  $#{q}$, & #{r} & #{a/b} & ",
            "#{a.modulo(b)} & #{a.remainder(b)}\\\\\n"
    end
  end
