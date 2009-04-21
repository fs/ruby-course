# The Book of Ruby - http://www.sapphiresteel.com

# create an array with two sub-arrays - i.e. 2 'rows' each with 4 elements
multiarr = [['one','two','three','four'],	# multiarr[0]
					[1,2,3,4]]				# multiarr[1]

# iterate over the elements ('rows') of multiarr
puts( "for i in.. (multi-dimensional array)" )
for i in multiarr
	puts(i.inspect) 
end

puts( "\nfor a, b, c, d in.. (multi-dimensional array)" )
for (a,b,c,d) in multiarr
	print("a=#{a}, b=#{b}, c=#{c}, d=#{d}\n" )
end