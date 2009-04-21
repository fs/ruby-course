# The Book of Ruby - http://www.sapphiresteel.com

def showDay( i )
	case( i + 1 ) # case selector is an expression
		when 1: puts( "Yup, '#{i} + 1' is Monday" )
		else puts( "showDay #{i} + 1: That's not Monday!" )
	end
end


def showDay2( i )
	case( i )		# multiple triggers in 'when' section
		when 1, 'Monday', 'Mon' : puts( "Yup, '#{i}' is Monday" )
		else puts( "showDay2 #{i}: That's not Monday!" )
	end
end

showDay( 0 )
showDay( 1 )

showDay2( 0 )
showDay2( 1 )
showDay2( 'Monday' )
showDay2( 'Mon' )
showDay2( 2 )