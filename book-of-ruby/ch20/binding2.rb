# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	@@x = " x"
	def initialize(s)
		@mystr = s
	end
	def getBinding
		return binding()
	end
end

class MyOtherClass 
	@@x = " y"
	def initialize(s)
		@mystr = s
	end
	def getBinding
		return binding()
	end
end

@mystr = self.inspect
@@x = " some other value"

ob1 = MyClass.new("ob1 string")
ob2 = MyClass.new("ob2 string")
ob3 = MyOtherClass.new("ob3 string")


puts(eval("@mystr << @@x", ob1.getBinding))
puts(eval("@mystr << @@x", ob2.getBinding))
puts(eval("@mystr << @@x", ob3.getBinding))
puts(eval("@mystr << @@x", binding))




			 