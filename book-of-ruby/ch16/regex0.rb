# The Book of Ruby - http://www.sapphiresteel.com

puts( /abc/ =~ 'abc' )
puts( /abc/ =~ 'xyzabcxyzabc' )
puts( /abc/ =~ 'xycab' )
puts( /[abc]/ =~ 'xycba' )

