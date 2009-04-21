# The Book of Ruby - http://www.sapphiresteel.com
class X
	def x
		print( "x:" )
		def y
			print("y:")
		end	
		
		def z
			print( "z:" )
			y
		end
	end
end


ob = X.new
ob.x   
puts
ob.y
puts
ob.z

