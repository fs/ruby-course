# The Book of Ruby - http://www.sapphiresteel.com

def abc( a, b, c )
	puts('---abc---')
	a.call
	b.call
	c.call
	yield
end

def abc2( &d )
	puts('---abc2---')
	d.call
end

def abc3( a, b, c, &d)
	puts('---abc3---')
	a.call
	b.call
	c.call
	d.call
	yield
end


def xyz
   puts('---xyz---')
   x = 1
   y = 2
   z = 3
   yield( x, y, z )	   
end



a = lambda{ puts "one" }
b = lambda{ puts "two" }
c = proc{ puts "three" }
myproc = proc{ puts("my proc") }

abc(a, b, c ) { puts "four" }
abc2{ puts "four" }
# abc2( 10 ) #< This is an error!
abc3(a, b, c){ puts "five" }
abc3(a, b, c, &myproc )

xyz( &myproc )
xyz{ |a,b,c| puts(a+b+c) }
puts( a, b, c )

# Curiously this next line of code no longer works!
#
#	    abc3(a, b, c, &myproc )
#
# ... this is because the block variables, a,b,c in this:
#		xyz{ |a,b,c| puts(a+b+c) }
#	  have initialised to Fixnum (integers) when the xyz
#	  method is called. Verify this by executing the following:
#		puts( a, b, c )
#	  Ruby's scoping rules hold many surprises for the unwary!
