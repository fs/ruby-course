# The Book of Ruby - http://www.sapphiresteel.com

class MyArray < Array
	include Comparable
	
	def <=> ( anotherArray )
		self.length <=> anotherArray.length
	end
end

class Array2 < Array
	include Comparable
end

myarr1 = MyArray.new([0,1,2,3])
myarr2 = MyArray.new([1,2,3,4])
myarr3 = MyArray.new([0,1,2,3,5])

arr1 = Array2.new([0,1,2,3])
arr2 = Array2.new([1,2,3,4])
arr3 = Array2.new([0,1,2,3,5])



puts( "\nMyArray" )
p( myarr1 < myarr2 )
p( myarr1 > myarr2 )
p( myarr1 == myarr2 )
p( myarr3 > myarr1 )
p( myarr3 <=> myarr1 )
p( myarr1 <=> myarr2 )

puts( "Array including Comparable" )
p( arr1 < arr2 )
p( arr1 > arr2 )
p( arr1 == arr2 )
p( arr3 > arr1 )
p( arr3 <=> arr1 )
p( arr1 <=> arr2 )
