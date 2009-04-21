# The Book of Ruby - http://www.sapphiresteel.com

aStr = "HELLO WORLD"
# aStr = "hello world"
# aStr = "Hello World"
 
case aStr
	when /^[a-z 0-9]*$/ 
		puts( "Lower case" )
	when /^[A-Z 0-9]*$/
		puts( "Upper case" )
	else 
		puts( "Mixed case\n" )
end   