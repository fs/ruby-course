# The Book of Ruby - http://www.sapphiresteel.com

def stringProcess( aStr, anotherStr )
	aStr.capitalize!
	anotherStr.reverse!.capitalize!	
	aStr = aStr +  " " + anotherStr.reverse!
	return aStr
end

def stringProcess2( aStr, anotherStr )
	myStr = aStr.capitalize!
	anotherStr.reverse!.capitalize!	
	myStr = myStr + " " + anotherStr.reverse
	return myStr
end

str1 = "hello"
str2 = "world"
str3 = stringProcess( str1, str2 )
puts( "Return value is  #{str3}" )
puts( "Value of args is #{str1} #{str2}" )
puts

str1 = "hello"
str2 = "world"
str3 = stringProcess2( str1, str2 )
puts( "Return value is  #{str3}" )
puts( "Value of args is #{str1} #{str2}" )