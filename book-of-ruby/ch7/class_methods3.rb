# The Book of Ruby - http://www.sapphiresteel.com

# Ways of defining class methods

class MyClass
	def MyClass.methodA
		puts("a")
	end
	
	class << self
		def methodB
			puts("b")
		end
		
		def methodC
			puts("c")			
		end
	end
end

class << MyClass
	def methodD
		puts( "d" )
	end
end

# verify that all the above methods really are singleton methods of MyClass
puts( MyClass.singleton_methods.sort )
# now use them as class methods
MyClass.methodA
MyClass.methodB
MyClass.methodC
MyClass.methodD