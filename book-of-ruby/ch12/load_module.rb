# The Book of Ruby - http://www.sapphiresteel.com

load( "testmod.rb", true)
# Here any executable code in the loaded file will be run
# but the code iself will be loaded in an anonymous module 
# so cannot be referenced here...

# None of this code can be executed!

#puts( "  MyModule.greet" )
#puts( MyModule.greet )
#puts("  MyModule::GOODMOOD")	
#puts(MyModule::GOODMOOD)	
#include MyModule
#puts( "  greet" )
#puts( greet )
#puts( "  sayHi" )
#puts( sayHi )
#puts( "  sayHiAgain" )
#puts( sayHiAgain )
#sing