# The Book of Ruby - http://www.sapphiresteel.com

multiarr = 
[ ['one','two','three','four'],
  [1,2,3,4],
  [:a,:b,:c,:d] 
 ]

# compare with iteration techniques in multi_array.rb (ch4)

# works with any number of items but a fixed number (2) of arrays
puts('===== 1 =====')
multiarr[0].length.times{|i|
   puts(multiarr[0][i], multiarr[1][i])
 }
 

# iterate through all the arrays, printing each array item in sequence
# works with any number of arrays and any number of items
puts('===== 2 =====')
multiarr.each{ |arr|
	multiarr[0].length.times{|i|
		puts(arr[i])
		}
 }
 

# iterate through each item index, printing the item at that index from each array
# works with any number of arrays and any number of items
puts('===== 3 =====')
multiarr[0].length.times{|i|
	multiarr.each{ |arr|
		puts(arr[i])
	}
 }