# Ruby Sample program from www.sapphiresteel.com 


module MyModule
   GOODMOOD = "happy"
   BADMOOD = "grumpy"
   
	def greet
		return "I'm #{GOODMOOD}. How are you?"
	end
	
	def MyModule.greet
		return "I'm #{BADMOOD}. How are you?"
	end
end	


class MyClass
   include MyModule
	
	def sayHi
		puts( greet )
	end
	
	def sayHiAgain
		puts( MyModule.greet )
	end
	
end

ob = MyClass.new
ob.sayHi
ob.sayHiAgain
puts(ob.greet)