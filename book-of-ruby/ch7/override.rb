# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	def sayHello
		return "Hello from MyClass"
	end
	
	def sayGoodbye
		return "Goodbye from MyClass" 
	end
end

class MyOtherClass < MyClass
		#overrides (and replaces) MyClass.sayHello
	def sayHello	
		return "Hello from MyOtherClass"
	end
	
		# overrides MyClass.sayHello but first calls that method 
		# with super. So this version "adds to" MyClass.sayHello
	def sayGoodbye	
		return super << " and also from MyOtherClass"
	end
		# overrides default to_s method
	def to_s
		return "I am an instance of the #{self.class} class"
	end
end

myclassob = MyClass.new
myotherclassob  = MyOtherClass.new

puts( myclassob.sayHello )
puts( myclassob.sayGoodbye )
puts( myclassob.to_s )

puts( myotherclassob.sayHello )
puts( myotherclassob.sayGoodbye )
puts( myotherclassob.to_s )

