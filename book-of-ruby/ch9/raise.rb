# The Book of Ruby - http://www.sapphiresteel.com

def handleError( e )
	puts( "Error of type: #{e.class}" )
	puts( e )
	puts( "Here is a backtrace: " )
	puts( e.backtrace )
end

def divbyzero
	return 1 / 0
end

begin
	divbyzero
rescue Exception => e
	puts( "A problem just occurred. Please wait..." )
	begin
		raise
	rescue
		handleError( e )
	end
end




