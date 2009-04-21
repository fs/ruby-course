# The Book of Ruby - http://www.sapphiresteel.com
class X
	def x
		print( "x:" )
		def y
			print("ha! ")
		end	
		
		def z
			print( "z:" )
			y
		end
		
		y
		z
	end
end


ob = X.new
ob.x
# The following cause errors...
# ob.y
# ob.z

