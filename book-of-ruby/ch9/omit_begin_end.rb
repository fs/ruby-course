# The Book of Ruby - http://www.sapphiresteel.com

def calc
#	begin		# begin is optional
		result = 1/0
	rescue TypeError, NoMethodError => e
		puts( e.class )
		puts( e )
		puts( "One of the values is not a number!" )
		result = nil
	rescue Exception => e
		puts( e.class )
		puts( e )
		result = nil
#	end			# end is optional
	return result
end

class X
#	begin		# begin is optional
		@@x = 1/0
	rescue Exception => e
		puts( e.class )
		puts( e )
#	end			# end is optional
end

module Y
#	begin		# begin is optional
		@@x = 1/0
	rescue Exception => e
		puts( e.class )
		puts( e )
#	end			# end is optional
end
	
calc