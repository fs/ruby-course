# Ruby Sample program from www.sapphiresteel.com 

require( "testmod.rb")

puts( "  MyModule.greet" )
puts( MyModule.greet )
puts("  MyModule::GOODMOOD")	
puts(MyModule::GOODMOOD)	
# puts( greet ) #=> This won't work!

include MyModule #mix in MyModule
puts( "  greet" )
puts( greet )	 #=> But now this does work! 
puts( "  sayHi" )
puts( sayHi )
puts( "  sayHiAgain" )
puts( sayHiAgain )
sing
puts(12346)