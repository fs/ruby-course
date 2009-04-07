#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'readbytes'

File.open("testfile") do |f|
  begin
    loop do
      data = f.readbytes(10)
      p data
    end
  rescue EOFError
    puts "End of File"
  rescue TruncatedDataError => td
    puts "Truncated data: read '#{td.data.inspect}'"
  end
end
