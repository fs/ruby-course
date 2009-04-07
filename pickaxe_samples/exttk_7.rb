#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
#require 'tk'
#b = TkButton.new do
#  text     "OK"
#  justify  "left"
#  border   5
#end
b = "cheat"
def b.cget(arg)
case arg
when 'text'     then 'OK'
when 'justify'  then 'left'
when 'border'   then 5
end
end
b.cget('text')
b.cget('justify')
b.cget('border')
