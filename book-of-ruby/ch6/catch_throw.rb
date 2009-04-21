# The Book of Ruby - http://www.sapphiresteel.com


def dothings( aNum )
	i = 0
	while true
		puts( "I'm doing things..." )
		i += 1
		throw( :go_for_tea ) if (i == aNum )
	end
end


catch( :finished) do	
	print( 'Enter a number: ' )
	num = gets().chomp.to_i
	if num == 0 then throw :finished end			
		puts( 100 / num )	
		
		
	catch( :go_for_tea ){
		dothings(5)	
	}
	
	puts( "Things have all been done. Time for tea!" )
end

puts( "Finished" )
	