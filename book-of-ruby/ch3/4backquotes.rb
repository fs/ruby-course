# The Book of Ruby - http://www.sapphiresteel.com

puts( `dir` )
puts( 'Press Enter')
gets()
puts( %x/dir/ )
puts( 'Press Enter')
gets()
puts( %x/echo "hello world"/ )
puts( 'Press Enter')
gets()
puts( %x{notepad} )
puts( 'Press Enter')
gets()
print( "Goodbye #{%x{calc}}" )

