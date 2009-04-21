# The Book of Ruby - http://www.sapphiresteel.com

puts('IO.foreach...')
IO.foreach("testfile.txt") {|line| print( line ) }

puts("\n\nIO.readlines...")
lines = IO.readlines("testfile.txt")
lines.each{|line| print( line )}


