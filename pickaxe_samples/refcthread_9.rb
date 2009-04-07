#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         a = Thread.new { Thread.current["name"] = "A"; Thread.stop }
         b = Thread.new { Thread.current[:name]  = "B"; Thread.stop }
         c = Thread.new { Thread.current["name"] = "C"; Thread.stop }
         Thread.list.each {|x| puts "#{x.inspect}: #{x[:name]}" }
