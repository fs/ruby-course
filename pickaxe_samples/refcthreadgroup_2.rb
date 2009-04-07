#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         thread = Thread.new { sleep 99 }
         group = ThreadGroup.new
         group.add(thread)
         group.enclose
         ThreadGroup::Default.add(thread)
puts "t.rb:5:in `add': can't move from the enclosed thread group (ThreadError)"
puts "        from prog.rb:5:in `<main>'"
