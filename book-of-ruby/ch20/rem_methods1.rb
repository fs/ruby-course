puts( "hello".reverse )

class String
	remove_method( :reverse )
end

puts( "hello".reverse )