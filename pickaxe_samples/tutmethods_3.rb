#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  def cool_dude(arg1="Miles", arg2="Coltrane", arg3="Roach")
    "#{arg1}, #{arg2}, #{arg3}."
  end

  cool_dude
  cool_dude("Bart")
  cool_dude("Bart", "Elwood")
  cool_dude("Bart", "Elwood", "Linus")
