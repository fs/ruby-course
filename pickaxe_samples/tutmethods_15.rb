#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
class InvoiceWriter
   def initialize(order)
     @order = order
   end
   def write_on(output)
     write_header_on(output)
     write_body_on(output)  
     write_totals_on(output)
   end

private

   def write_header_on(output)
     # ...
   end

   def write_body_on(output)
     # ...
   end

   def write_totals_on(output)
     # ...
   end
end
