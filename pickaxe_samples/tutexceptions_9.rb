#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  raise

  raise "Missing name" if name.nil?

  if i >= names.size
    raise IndexError, "#{i} >= size (#{names.size})"
  end

  raise ArgumentError, "Name too big", caller
