# The Book of Ruby - http://www.sapphiresteel.com

def showFamily( aClass )
	if (aClass != nil) then	
		puts( "#{aClass}" )			
		showFamily( aClass.superclass )
	end
end

def chDisk( aChar )
	startdir = Dir.getwd
	begin
		Dir.chdir( "#{aChar}:\\" )
		puts( `dir` )
	rescue Exception => e
		# showFamily( e.class ) # to see ancestors, uncomment this...
		puts e.class			# ...and comment out this
		puts e				
	ensure
		Dir.chdir( startdir )
	end	
end

chDisk( "D" )
chDisk( "X" )
chDisk( "ABC" )