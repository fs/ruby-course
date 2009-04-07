#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
class Person
   attr_accessor  :name   

   def upper_case_name
     @name.upcase
   end
end

# construct a new object based on class Person
# and assign a reference to the variable 'dave'
dave = Person.new

# set and then access the 'name' attribute of
# the object references by dave.

dave.name = 'Dave Thomas'

puts "The name in the object is #{dave.name}"
