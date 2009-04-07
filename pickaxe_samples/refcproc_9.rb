#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
          add_three_numbers = lambda {|a,b,c| a + b + c}
          add_10_to_two_numbers = add_three_numbers.curry[10]
          add_33_to_one_number  = add_10_to_two_numbers[23]

          add_three_numbers[1,2,3]
          add_10_to_two_numbers[1,2]
          add_33_to_one_number[1]
