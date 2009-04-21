# The Book of Ruby - http://www.sapphiresteel.com

class MyClass	
	def initialize( aStr )
		@msg = aStr
	end
	
	def saySomething
		puts( @msg )
	end
end


starprize = MyClass.new( "Star Prize" )
class << starprize
	def congratulate
		puts( "You've won a fabulous holiday in Grimsby!" )
	end
end

boxes = [MyClass.new("box1 is empty"),
		 MyClass.new("box2 is empty"),
		 starprize,
		 MyClass.new("box3 is empty")]

boxes.each do |item|
	item.saySomething	
	if item.singleton_methods.include?("congratulate") then
		item.congratulate
	end			
end



