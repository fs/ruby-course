# The Book of Ruby - http://www.sapphiresteel.com

s = "def myMethod # a comment"
s2 = "The cat sat on the mat"

puts( "---split---" )
p( s.split( /m.*d/ ) )
p( s.split( /\s/ ) )
p( s.split( // ) )
puts( "---sub---" )
p( s.sub( /m.*d/, "yourFunction" ) )
p( s2.sub( /at/, "aterpillar" ) )
puts( "---gsub---" )
p( s.gsub( /m.*d/, "yourFunction" ) )
p( s2.gsub( /at/, "aterpillar" ) )