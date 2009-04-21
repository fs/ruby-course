# The Book of Ruby - http://www.sapphiresteel.com

def calc( val1, val2 )
	begin
		result = val1 / val2
	rescue Exception => e
		puts( e.class )
		puts( e )
		result = nil
	end
	return result
end

calc( 20, 0 )
puts
calc( 20, "100" )
puts
calc( "100", 100 )