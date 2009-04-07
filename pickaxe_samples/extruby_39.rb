#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  require 'mkmf'
  dir_config('cdjukebox')
  have_library('cdjb', 'CDPlayerNew')
  have_header('hp_mp3.h')
  create_makefile("CDJukeBox")
