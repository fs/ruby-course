#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        File.identical?("testfile", "./code/../testfile")
        File.symlink("testfile", "wibble") #!sh!
        File.identical?("testfile", "wibble")
        File.link("testfile", "wobble")  #!sh!
        File.identical?("testfile", "wobble")
        File.identical?("wibble", "wobble")
          File.unlink("wibble", "wobble")
