# The Book of Ruby - http://www.sapphiresteel.com

class Box
	def initialize( aStr )
		@msg = aStr
	end
	
	def look_inside
		puts( @msg )
	end
end

starprize = Box.new( "Star Prize" )
# create a singleton method
def starprize.congratulate
	puts( "You've won a fabulous holiday in Grimsby!" )
end

boxes = [Box.new("box1 is empty"),
		 Box.new("box2 is empty"),
		 starprize,
		 Box.new("box3 is empty")]

boxes.each do |item|
	item.look_inside	
	# test if the congratulate singleton method exists before calling it
	if item.singleton_methods.include?("congratulate") then
		# if item.respond_to?( :congratulate ) then  # an alternative test
		item.congratulate
	end			
end
