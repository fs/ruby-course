#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  5.times do |i|
     File.open("temp.rb","w") do |f| 
       f.puts "module Temp"
       f.puts "  def Temp.var"
       f.puts "    #{i}"
       f.puts "  end"
       f.puts "end" 
     end
     load "temp.rb"
     puts Temp.var
   end
