# The Book of Ruby - http://www.sapphiresteel.com

x = 3000

c1 = lambda{ 
	return x + 100	
	}

c2 = lambda{ 
	|z|	
	return z + 100	
	}

c3 = lambda{ 
	|x|
	return x + 100	
	}

puts( '=== c1 ===' )	
someval=1000
someval=c1.call(someval); puts(someval)
someval=c1.call(someval); puts(someval) 
# 2.times{ someval=c1.call(someval); puts(someval) }
puts( "x=#{x}" )

puts( "=== c2 ===" )
someval=1000
someval=c2.call(someval); puts(someval)
someval=c2.call(someval); puts(someval) 
# 2.times{ someval=c2.call(someval); puts(someval) }
puts( "x=#{x}" )

puts( "=== c3 ===" )
someval=1000
someval=c3.call(someval); puts(someval)
someval=c3.call(someval); puts(someval) 
# 2.times{ someval=c3.call(someval); puts(someval) }
puts( "x=#{x}" )

print("Which variables are defined?\n")
print("x=[#{defined?(x)}], z=[#{defined?(z)}]")