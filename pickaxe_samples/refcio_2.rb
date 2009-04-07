#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        IO.copy_stream("testfile", "newfile", 10, 10)
        ip = File.open("/etc/passwd")
        op = File.open("extract", "w")
        op.puts "First 20 characters of /etc/passwd"
        IO.copy_stream(ip, op, 20)
        op.puts "\nEnd of extract"
        op.close
        puts File.readlines("extract")
