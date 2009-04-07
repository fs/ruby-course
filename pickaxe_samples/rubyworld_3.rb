#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  puts "In parent, term = #{ENV['TERM']}"
  fork do
    puts "Start of child 1, term = #{ENV['TERM']}"
    ENV['TERM'] = "ansi"
    fork do
      puts "Start of child 2, term = #{ENV['TERM']}"
    end
    Process.wait
    puts "End of child 1, term = #{ENV['TERM']}"
  end
  Process.wait
  puts "Back in parent, term = #{ENV['TERM']}"
