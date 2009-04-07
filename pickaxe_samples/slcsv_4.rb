#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'csv'

      table = CSV.read("csvfile_hdr",  
                       headers: true, 
                       header_converters: :symbol)
      puts "Row count = #{table.count}"
      puts "First row = #{table[0].fields}"
      puts "Count of eggs = #{table[0][:count]}"
      table << [99, "red balloons", 1.23]
      table[:in_stock] = [10, 5, 10, 10]
      puts "\nAfter adding a row and a column, the new table is:"
      puts table
