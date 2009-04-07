#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
 count = 0
 skipping = false
File.open("testfile") do |file|
#  file.each_byte {|ch| print "#{ch.chr}:#{ch} "  }
   file.each_byte {|ch| 
      if ch == 10
        skipping = false
        count = 0
      else
        count += 1
        if count == 11
          puts "..."
          skipping = true
        end
        next if skipping
        print "#{ch.chr}:#{ch} "  
      end
   }
end
