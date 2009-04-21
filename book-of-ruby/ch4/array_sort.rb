# The Book of Ruby - http://www.sapphiresteel.com

# you can pass a block to the sort method of Array
# to determine how two consecutive elements are
# sorted. Here we convert each element, a and b to
# a string so that nil can be sorted. Since nil.to_s 
# returns an empty string, nil will always be sorted 'low'

arr = ['h','e','l','l','o',' ',nil,'w','o','r','l','d',1,2,3,nil,4,5]

# sort ascending from nil upwards
sorted_arr = arr.sort{
	|a,b|
		a.to_s <=> b.to_s
	}

# sort descending from upper value down to nil 
reverse_sorted_arr = arr.sort{
	|a,b|
		b.to_s <=> a.to_s
	}
	
p(sorted_arr )
p(reverse_sorted_arr)