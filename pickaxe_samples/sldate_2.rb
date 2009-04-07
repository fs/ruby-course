#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
       require 'date'

       now = DateTime.now
       year = now.year
       year += 1 if now.month == 12 && now.day > 25
       xmas = DateTime.new(year, 12, 25)

       diff = xmas - now

       puts "It's #{diff.to_i} days to Christmas"
       puts "Christmas #{year} falls on a #{xmas.strftime('%A')}"
