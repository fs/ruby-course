# The Book of Ruby - http://www.sapphiresteel.com

class X
	def marshal_dump
		[@x]
	end
	
	def marshal_load(data)
		@x = data[0]
	end
end

ob = X.new

class << ob
	def xxx( aStr )
		@x = aStr
	end		
end


ob.xxx( "hello" )
p( ob )


File.open( 'test2.sav', 'w' ){ |f|	
   Marshal.dump( ob, f )
}

ob.xxx( "new string" )
p( ob )


File.open( 'test2.sav' ){ |f|	
    ob = Marshal.load(f)
}

p( ob )
# ob.xxx( "this fails" )