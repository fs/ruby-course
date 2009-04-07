#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'csv'
      total_cost = 0
      CSV.foreach("csvfile_hdr", headers: true, converters: :numeric)  do |data|
         total_cost += data["Count"] * data["Price"]
      end
      puts "Total cost is #{total_cost}"
