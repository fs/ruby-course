# The Book of Ruby - http://www.sapphiresteel.com

require 'yaml'

class MyClass
	def initialize( anInt, aString )
		@myint = anInt
		@mystring =aString
	end
end

ob1 = MyClass.new( 100, "hello world" ).to_yaml
ob2 = MyClass.new( 42, "greetings planet" ).to_yaml

puts( ob1 )
puts( ob2 )


