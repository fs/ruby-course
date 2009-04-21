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

include MyModule
puts( greet )
puts( MyModule.greet )
