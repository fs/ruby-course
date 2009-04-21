# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	def MyClass.classmethod1
		puts( "This is a class method" )
	end
	
	class << self
		def classmethod2
			puts( "This is another class method" )
		end
	end
	
	def instanceMethod
		puts( "This is an instance method" )
	end
end

ob = MyClass.new
ob2 = MyClass.new

def ob.singleton_method1
	puts( "This is a singleton method" )
end

class << ob
	def singleton_method2
		puts( "This is another singleton method" )
	end
end

MyClass.classmethod1
MyClass.classmethod2
# MyClass.instancemethod #=> error

ob.instanceMethod
ob2.instanceMethod
# ob.classmethod1 #=> error

ob.singleton_method1
ob.singleton_method2
# ob2.singleton_method1 #=> error