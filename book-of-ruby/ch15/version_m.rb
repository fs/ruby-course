# The Book of Ruby - http://www.sapphiresteel.com

x = Marshal.dump( "hello world" )
print( "Marshal version: #{x[0]}:#{x[1]}\n" )

puts( Marshal::MAJOR_VERSION )
puts( Marshal::MINOR_VERSION )