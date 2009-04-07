#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
num_pallets = 101
weight = 1
  while weight < 100 and num_pallets <= 30
    pallet = next_pallet()
    weight += pallet.weight
    num_pallets += 1
  end
