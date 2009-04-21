# The Book of Ruby - http://www.sapphiresteel.com

FILENAME = 'test2.sav'

class X
	def marshal_dump
		[@x]
	end
	
	def marshal_load(data)
		@x = data[0]
	end
end

def makeIntoSingleton( someOb )
	class << someOb
		def xxx=( aStr )
			@x = aStr
		end	
		
		def xxx
			return @x
		end
	end
	return someOb
end

ob = X.new

if File.exists?(FILENAME) then
	File.open(FILENAME){ |f|	
		ob = Marshal.load(f)
    }
else
	puts( "Saved data can't be found" )
end

p( ob )

ob = makeIntoSingleton( ob )

if	ob.xxx == "hello" then 
	ob.xxx = "goodbye"
else
	ob.xxx = "hello"
end


File.open( FILENAME, 'w' ){ |f|	
    Marshal.dump( ob, f )
}

p( ob )
puts( ob.xxx )