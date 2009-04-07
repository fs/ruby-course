#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         'seed'.match('(.)\1')
         'seed'.match('(.)\1')[0]
         'seed'.match(/(.)\1/)[0]
         'seed'.match('ll')
         'seed'.match('ll') {|md| md[0].upcase }
         'seed'.match('xx')
