# Ruby Sample program from www.sapphiresteel.com 

def hello
	return "hello world"
end
	
x = [1+2, hello,  `dir`]				# array containing an expression, a methodcall and a string
puts(x.inspect)							# Note: if your are not using Windows, you may need to 
										# change `dir` to a command that is understood by your
										# operating system

y = %w( this is an array of strings )
puts(y.inspect)

a = Array.new
puts("Array.new : " << a.inspect)

a = Array.new(2)
puts("Array.new(2) : " << a.inspect)

a = Array.new(2,"hello world")
puts(a.inspect)

a = Array.new(2)
a[0]= Array.new(2,'hello')
a[1]= Array.new(2,'world')
puts(a.inspect)

a = [	[1,2,3,4],
		[5,6,7,8],
		[9,10,11,12],
		[13,14,15,16] ]
puts(a.inspect)

a = Array.new([1,2,3]) 
puts(a.inspect)

# Note: in the above example, if you pass an array to new() without
# putting it in sound brackets, you must leave a space between
# 'new' and the opening square bracket.
# This works:
#		a = Array.new [1,2,3]
# This doesn't!
#		a = Array.new[1,2,3]