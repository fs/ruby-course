# The Book of Ruby - http://www.sapphiresteel.com

# Error: the rescue clauses are in the wrong order!
def calc( val1, val2 )
	begin
		result = val1 / val2
	rescue Exception => e
		puts( e.class )
		puts( e )
		result = nil		
	rescue TypeError, NoMethodError => e
		puts( e.class )
		puts( e )
		puts( "Oops! This message will never be displayed!" )
		result = nil	
	end
	return result
end

calc( 20, 0 )
puts
calc( 20, "100" )
puts
calc( "100", 100 )

