# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	
	def MyClass.classMethod
		puts( "This is a class method" )
	end
	
	def instanceMethod
		puts( "This is an instance method" )
	end
		
end

ob = MyClass.new
MyClass.classMethod
		# The following are errors...
# MyClass.instanceMethod
# ob.classMethod
ob.instanceMethod