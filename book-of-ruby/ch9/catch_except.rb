# The Book of Ruby - http://www.sapphiresteel.com

catch( :finished ) {	
	print( 'Enter a number: ' )
	num = gets().chomp.to_i
	begin
		result = 100 / num
	rescue Exception => e
		puts( e.class )
		result = 0
		throw :finished		# jump to end of block
	end
	puts( "The result of that calculation is #{result}" )
	
} # end of :finished catch block


puts( "Finished" )
	