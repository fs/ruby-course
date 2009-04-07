#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'base64'
      str = "Now is the time for all good coders\nto learn Ruby"
      converted = Base64.strict_encode64(str)
      puts converted
      puts Base64.strict_decode64(converted)
