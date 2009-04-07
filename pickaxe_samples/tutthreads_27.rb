#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  exec("sort testfile > output.txt") if fork.nil?
  # The sort is now running in a child process
  # carry on processing in the main program
  
  # ... dum di dum ...

  # then wait for the sort to finish
  Process.wait
 File.delete('output.txt')
