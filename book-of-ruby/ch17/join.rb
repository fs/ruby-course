# The Book of Ruby - http://www.sapphiresteel.com

words = ["hello", "world", "goodbye", "mars" ]
numbers = [1,2,3,4,5,6,7,8,9,10]

Thread.new{ 
	words.each{ |word| puts( word ) }
}.join

Thread.new{ 
	numbers.each{ |number| puts( number ) }
}.join