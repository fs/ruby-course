#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  #if defined(HAVE_HP_MP3_H)
  #  include <hp_mp3.h>
  #endif
  
  #if defined(HAVE_SETPRIORITY)
    err = setpriority(PRIOR_PROCESS, 0, -10)
  #endif
