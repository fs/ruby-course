#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'date'
      
      d = Date.new(2000, 3, 31)
      [d.year, d.yday, d.wday]
      [d.month, d.mday]
      [d.cwyear, d.cweek, d.cwday]
      [d.jd, d.mjd]
      d1 = Date.commercial(2000, 13, 7)
      d1.to_s
      [d1.cwday, d1.wday]
