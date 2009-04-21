# The Book of Ruby - http://www.sapphiresteel.com

# demonstrates precedence of {} v do..end blocks
# Braces {} have stronger precedence.
# So...
#    foo bar do .. end
# ... foo will be called with the block; bar is passed to foo as an arg
#
# But...
#    foo bar{ .. }
# ... bar will be called with the block and its return value passed 
#     to foo as an arg
#
# Use round braces to resolve the ambiguity:
# e.g.
# foo( bar  do..end ) # bar is called with block
# foo( bar ) { .. }   # foo is called with block

def foo( b )
	puts("---in foo---")
	a = 'foo'
	if block_given?
		puts( "(Block passed to foo)" )
		 yield( a )
	else
		puts( "(no block passed to foo)" )
	end
	puts( "in foo, arg b = #{b}" )
	return "returned by " << a
end

def bar
	puts("---in bar---")
	a = 'bar'
	if block_given?
		puts( "(Block passed to bar)" )
		yield( a )
	else
		puts( "(no block passed to bar)" )
	end
	return "returned by " << a
end



# ========== Syntax "A" - do..end =======
puts( '--- (A) do block ---' )
# calls foo with block
foo bar do |s| puts( s ) end

# the above is equivalent to
# foo( bar ) do |s| puts( s ) end
#    or
# foo( bar ) { |s| puts(s) }
puts
# ========== Syntax "B" - {} =======
puts( '--- (B) curly braces block ---' )
# calls bar with block
foo bar{ |s| puts(s) }

# the above is equivalent to
# foo(bar{ |s| puts(s) })
#    or
# foo( bar do |s| puts( s ) end )