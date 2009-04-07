#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        puts "Default group is #{ThreadGroup::Default.list}"
        tg = ThreadGroup.new
        t1 = Thread.new { sleep }
        t2 = Thread.new { sleep }
        puts "t1 is #{t1}, t2 is #{t2}"
        tg.add(t1)
        puts "Default group now #{ThreadGroup::Default.list}"
        puts "tg group now #{tg.list}"
