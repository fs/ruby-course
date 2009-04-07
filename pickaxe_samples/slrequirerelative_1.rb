#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  REL_PATH = File.join(File.dirname(__FILE__), "..", "support")

  require "#{REL_PATH}/my_lib"

  # or...

  $: << REL_PATH
  require "my_lib"
