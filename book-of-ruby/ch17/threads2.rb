# The Book of Ruby - http://www.sapphiresteel.com

words = ["hello", "world", "goodbye", "mars" ]
numbers = [1,2,3,4,5,6,7,8,9,10]

startTime = Time.new
puts( "Start: %10.9f" % startTime )

Thread.new{ 
	words.each{ |word| puts( word ) }
}

Thread.new{ 
	numbers.each{ |number| puts( number ) }
}

sleep( 5 ) 

endTime = Time.new
puts( "End: %10.9f" % endTime.to_f )
totalTime = endTime-startTime
puts( "Total Time: %10.9f" % totalTime.to_f )