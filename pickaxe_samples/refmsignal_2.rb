#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
class Hash
def method_missing(name, *args)
 puts "Missing #{name}"
 exit!
end
def inspect
  '{' +
  keys.sort.collect {|k|  '"' + k + '"=>' + self[k].to_s}.join(', ') +
   '}'
end
end
        Signal.list
