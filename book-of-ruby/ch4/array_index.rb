# The Book of Ruby - http://www.sapphiresteel.com

arr = ['h','e','l','l','o',' ','w','o','r','l','d']

# Here we print each char in sequence
print( arr[0,5] )
puts
print( arr[-5,5 ] )
puts
print( arr[0..4] )
puts
print( arr[-5..-1] )

puts

# Here we inspect the chars. Notice that we can
# index into an array like this...
#	arr[<start index>, <number of items>]
# or specify a range like this...
#	arr[<start index> .. <end index> ]
#
# So these are equivalent:

p( arr[0,5] )
p( arr[0..4] )