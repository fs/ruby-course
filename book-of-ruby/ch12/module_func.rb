# The Book of Ruby - http://www.sapphiresteel.com

module MyModule
	def sayHi
		return "hi!"
	end

	def sayGoodbye
		return "Goodbye"
	end
	
	module_function :sayHi
end

class MyClass
  include MyModule
	def speak
		puts(sayHi)
		puts(sayGoodbye)
	end
end

ob = MyClass.new
ob.speak
puts(MyModule.sayHi)
# Note: sayGoodbye is not defined as a module_function so the 
# following will result in an 'undefined method' error
puts(MyModule.sayGoodbye)