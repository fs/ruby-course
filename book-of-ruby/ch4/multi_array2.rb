# The Book of Ruby - http://www.sapphiresteel.com

# create an array with two sub-arrays - i.e. 2 'rows' each with 4 elements
multiarr = [['one','two','three','four'],	# multiarr[0]
					[1,2,3,4]]				# multiarr[1]

# iterate over each element in each specific 'row' of multiarr
puts( "\nfor..in..end (multi-dimensional array)" )
for s in multiarr[0] # 'row' 0 is the first 'sub-array' : ['one','two','three','four']
	puts(s)	
end
for s in multiarr[1] # 'row' 1 is the second 'sub-array' : [1,2,3,4]
	puts(s)	
end

# iterate over each element using nested for loops
puts( "\nNested for loops..." )
for row  in multiarr
	for item in row
	     puts(item) 
	 end
end