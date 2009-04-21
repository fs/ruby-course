# The Book of Ruby - http://www.sapphiresteel.com

def hidden( aStr, anotherStr )
	anotherStr = aStr + " " + anotherStr	
	return aStr + anotherStr.reverse
end

str1 = "dlrow"
str2 = "olleh"
str3 = hidden(str1, str2)
puts( str1 )
puts( str2 )
puts( str3 )
	
 
