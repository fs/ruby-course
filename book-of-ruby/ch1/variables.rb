# The Book of Ruby - http://www.sapphiresteel.com

localvar = "hello"
$globalvar = "goodbye" 

def amethod
	localvar = 10
	puts( localvar )
	puts( $globalvar )
end

def anotherMethod
	localvar = 500
	$globalvar = "bonjour"
	puts( localvar )
	puts( $globalvar )
end


amethod
puts
anotherMethod
puts
amethod
puts
puts( localvar )
puts( $globalvar )
