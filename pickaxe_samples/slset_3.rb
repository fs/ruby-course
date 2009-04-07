#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'etc'
require 'set'

users = []
#Etc.passwd {|u| users << u }
Etc.passwd {|u| users << u unless u.uid.between?(70,89) || u.uid.between?(94,100) || u.uid > 1000} 

related_users = users.to_set.divide do |u1, u2|
  (u1.uid - u2.uid).abs <= 1
end

related_users.each do |relatives|
  relatives.each {|u| print "#{u.uid}/#{u.name} " }
  puts
end
