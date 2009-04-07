#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'erb'
input = %{<% high.downto(low) do |n|   # set high, low externally %>
  <%= n %> green bottles, hanging on the wall 
  <%= n %> green bottles, hanging on the wall
  And if one green bottle should accidentally fall
  There'd be <%= n-1 %> green bottles, hanging on the wall
         . . .
<% end %>}
high,low = 10, 8
low = 10
#erb = ERB.new(input)
erb = ERB.new(input, 0, ">")
erb.run(binding)
