#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  require 'ipaddr'
      class IPAddr
        alias old_ins inspect
        def inspect
         old_ins.sub(%r{/}, '/ ')
        end
      end

  v4 = IPAddr.new('192.168.23.0/24')
  v4
  v4.mask(16)
  v4.reverse
  v6 = IPAddr.new('3ffe:505:2::1')
  v6
  v6.mask(48)

  # the value for 'family' is OS dependent. This
  # value is for OS X
  v6.family
