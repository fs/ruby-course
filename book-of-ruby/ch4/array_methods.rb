# The Book of Ruby - http://www.sapphiresteel.com
#
# NOTE: You may want to print this out for ease of comparison
# with the output

# Some arrays to play about with
arr1 = [1,1,2,2,3,3]
arr2 = [1,2,3,4,5,6,7,8,9]
arr3 = ['h','e','l','l','o',' ',nil,'w','o','r','l','d']

# an array containing several more levels of 'sub arrays'
multiarr = [
			['one','two','three','four'],		
			[1,2,3,4],
				["I",
					["wandered","lonely","as",
						["a","cloud"]
					]
				]
		   ]										


# Copies of arr1 and arr3 so that we can restore their 
# original state after changing their contents!
copy_of_arr1 = arr1.clone
copy_of_arr3 = arr3.clone


# A utility method to print line numbers before inspecting
# values. To make it easier to match output with the
# numbered tests below
@linenum = 0
def wr( exp )
    @linenum += 1
	print( "(\##{@linenum}) " )
	p( exp )
end


# Testing various Array methods. Compare output
# with the numbered tests
wr(arr1&arr2 )			#1
wr(arr1+arr2)			#2
wr(arr1-arr2)			#3
wr(arr2-arr1)			#4
wr(arr1<<arr2)			#5	this modifies arr1
wr(arr1)				#6
arr1.clear						#	this modifies the array
wr(arr1)				#7
arr1 = copy_of_arr1
wr(arr1)				#8
wr(arr3.compact)		#9
arr3.delete('l')				#	this modifies the array
wr(arr3)				#10
arr3.delete_at(2)
wr(arr3)				#11
arr3 = copy_of_arr3
wr(arr3.length)			#12
wr(arr3.reverse)		#13
arr3.compact!					# remove nils
wr(arr3)				#14
wr(arr3.sort)			#15		# this doesn't work if array contains nil!
wr(multiarr.flatten)	#16
wr(multiarr)			#17
wr(multiarr.reverse)	#18
wr(multiarr.length)		#19