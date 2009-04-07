#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        IO.foreach("testfile", nil, mode: "rb", encoding: "ascii-8bit") do |content|
          puts content.encoding
        end
        IO.foreach("testfile", nil, open_args: ["r:iso-8859-1"]) do |content|
          puts content.encoding
        end      
