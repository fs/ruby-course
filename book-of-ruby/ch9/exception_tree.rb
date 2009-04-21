# The Book of Ruby - http://www.sapphiresteel.com

def showFamily( aClass )
	if (aClass != nil) then	
		puts( "#{aClass}" )			
		showFamily( aClass.superclass )
	end
end


begin
	x = 1/0	
rescue Exception => exc
	x = 0	
	puts( exc )
	puts( "Family Tree of this exception..." )
	showFamily( exc.class )
end
