#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'set'
set1 = Set.new([:bear, :cat, :deer])
set1.add(:fox)
partition = set1.classify {|element| element.to_s.length }

partition

set2 = [ :cat, :dog, :cow ].to_set
set1 | set2
set1 & set2
set1 - set2
set1 ^ set2
