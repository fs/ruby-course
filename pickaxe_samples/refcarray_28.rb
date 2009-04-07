#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
          columns = [ 1, 2, 3 ]
          data = %w{ a b c d e f g h }

          columns.cycle do |column_number|
            print data.shift, "\t"
            break if data.empty?
            puts if column_number == columns.last
          end
          puts
