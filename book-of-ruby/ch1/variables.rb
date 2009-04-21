# The Book of Ruby - http://www.sapphiresteel.com

localvar = 'hello'
$globalvar = 'goodbye'

def a_method
	localvar = 10
	puts(localvar)
	puts($globalvar)
end

def another_method
	localvar = 500
	$globalvar = 'bonjour'
	puts(localvar)
	puts($globalvar)
end


a_method
puts
another_method
puts
a_method
puts
puts(localvar)
puts($globalvar)
