# The Book of Ruby - http://www.sapphiresteel.com

puts( 'abcdefgh'.match( /cdefg/ ) )	# literal chars
puts( 'abcdefgh'.match( /cd..g/ ) )	# dot matches any char

									# list of chars in square brackets
puts( 'cat'.match( /[fc]at/ ) )
puts( "batman's father's cat".match( /[fc]at/ ) )
puts( 'bat'.match( /[fc]at/ ) )		#=> nil

									# match char in a range
puts( 'ABC100x3Z'.match( /[A-Z][0-9][A-Z0-9]/ ) )
puts( 'ABC100x3Z'.match( /[a-z][0-9][A-Z0-9]/ ) )

									# escape 'special' chars with \
puts( 'ask who?/what?'.match( /who\?\/w..t\?/ ) )		

									# special escape characters
puts( 'ABC 100x3Z'.match( /\s\S\d\d\D/ ) )		
				
									# scan for all occurrences of pattern 'abc'
									# with at least 2 and no more than 3 occurrences 
									# of the letter 'c'
p( 'abcabccabcccabccccabccccccabcccccccc'.scan( /abc{2,3}/ ) )
										
									# match either of two patterns
puts( 'my cat and my dog'.match( /cat|dog/ ) )													
puts( 'my hamster and my dog'.match( /cat|dog/ ) )													