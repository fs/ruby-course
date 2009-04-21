# The Book of Ruby - http://www.sapphiresteel.com

# This example taken from the Ruby class library documentation
def getBinding(str)
	return binding()
end
str = "hello"
puts( eval( "str + ' Fred'" )   )                  #=> "hello Fred"
puts( eval( "str + ' Fred'", getBinding("bye") ) ) #=> "bye Fred"