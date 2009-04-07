#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'csv'
      CSV.foreach("csvfile") do |row|
        qty = row[0].to_i
        price = row[2].to_f
        printf "%20s: $%5.2f %s\n", row[1], qty*price, row[3] || "  ---"
      end
