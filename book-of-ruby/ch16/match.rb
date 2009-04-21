# The Book of Ruby - http://www.sapphiresteel.com

puts( /cde/ =~ 'abcdefg' )
puts( /cde/.match('abcdefg') )
p( /cde/.match('abcdefg') )

puts( /xde/ =~ 'abcdefg' )
puts( /xde/.match('abcdefg') )
