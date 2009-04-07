#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  require 'mkmf'

  if have_library("jpeg","jpeg_mem_init") and
     find_library("X11", "XOpenDisplay", 
                  "/usr/X11/lib",        # list of directories
                  "/usr/X11R6/lib",      # to check
                  "/usr/openwin/lib")    # for library
  then
      create_makefile("XThing")
  else
      puts "No X/JPEG support available"
  end
