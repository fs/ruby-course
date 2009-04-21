# The Book of Ruby - http://www.sapphiresteel.com

def ret_things
	greeting = "Hello world"
	a = 1
	b = 2.0
	return a, b, 3, "four", greeting, 6 * 10
end

def ret_arr
	a = 1
	b = 2
	c = "hello world"
	d = [a,b,c]
	e = [a,b,c,d]
	return e
end

def ret_hash
	return {'a'=>'hello', 'b'=>'goodbye', 'c'=>'fare thee well'}
end

p( ret_things )
p( ret_arr )
p( ret_hash )

mythings = ret_things
a = ret_things[0]
e = ret_things[4]

puts( "mythings=#{mythings}" )
puts( "a=#{a} and e=#{e}" )
b, c, d = ret_things[1..3]
puts( "b=#{b}, c=#{c}, d=#{d}" )

print( "ret_things returns: ",  ret_things.class )
