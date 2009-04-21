# The Book of Ruby - http://www.sapphiresteel.com

# This fails

ob = Object.new

# singleton class
class << ob
	def xxx( aStr )
		@x = aStr
	end	
end

ob.xxx( "hello" )
p( ob )

File.open( 'test.sav', 'w' ){ |f|	
    Marshal.dump( ob, f )
}

File.open( 'test.sav' ){ |f|	
    ob = Marshal.load(f)
}


p( ob )
