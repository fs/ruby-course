#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
if false # this doesn't work in 'code' under OSX
  pipe = IO.popen("-","w+")
  if pipe
    pipe.puts "Get a job!"
    STDERR.puts "Child says '#{pipe.gets.chomp}'"
  else
    STDERR.puts "Dad says '#{gets.chomp}'"
    puts "OK"
  end
else
  puts "Dad says 'Get a job!'"
  puts "Child says 'OK'"
end
