# The Book of Ruby - http://www.sapphiresteel.com

def showFamily( aClass )
	if (aClass != nil) then			
		puts( aClass )			
		showFamily( aClass.superclass )
	end
end

puts( "Class hierarchy of Class..." )
showFamily( Class )

class X < Module
end
puts( "Class hierarchy of X..." )
showFamily( X )

