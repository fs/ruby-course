#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class Test
    def test
      a = 1
      b = 2
    end
  end
  
  set_trace_func proc {|event, file, line, id, binding, classname|
 file = "prog.rb"
 line -= 2 if line > __LINE__
    printf "%8s %s:%-2d %-15s %-15s\n", event, file, line, classname, id
  }
  t = Test.new
  t.test
