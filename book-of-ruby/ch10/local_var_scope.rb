# The Book of Ruby - http://www.sapphiresteel.com

def foo
	a = 100
	[1,2,3].each do |b|
		c = b # here c is local to the block, not to the method
		a = b
		print("a=#{a}, b=#{b}, c=#{c}\n")
	end
	print("Outside block: a=#{a}\n") # can't print #{b} and #{c} here!!!
end


def foo2
	a = 100
	for b in [1,2,3] do 
		c = b 
		a = b
		print("a=#{a}, b=#{b}, c=#{c}\n")
	end
	print("Outside block: a=#{a}, b=#{b}, c=#{b}\n")	
end



puts( "========foo===========" )
foo 
puts( "========foo2===========" )
foo2