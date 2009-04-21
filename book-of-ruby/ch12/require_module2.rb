# The Book of Ruby - http://www.sapphiresteel.com

require( "testmod.rb")

puts( "  MyModule.greet" )
puts( MyModule.greet )
puts("  MyModule::GOODMOOD")	
puts(MyModule::GOODMOOD)	

include MyModule #mix in MyModule
puts( "  greet" )
puts( greet )
puts( "  sayHi" )
puts( sayHi )
puts( "  sayHiAgain" )
puts( sayHiAgain )
sing
puts(12346)