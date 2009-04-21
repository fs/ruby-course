# Ruby Sample program from www.sapphiresteel.com 

def showDay( i )
	case( i )
		when 1 : puts("It's Monday" )
		when 2 : puts("It's Tuesday" )
		when 3 : puts("It's Wednesday" )
		when 4 : puts("It's Thursday" )
		when 5 then puts("It's Friday" )
				  puts("...nearly the weekend!")
		when 6, 7  
			puts("It's Saturday!" ) if i == 6 
			puts("It's Sunday!" ) if i == 7 
			puts( "Yippee! It's the weekend! " )	
			# the following never executes
		when 5 : puts( "It's Friday all over again!" )
		else puts( "That's not a real day!" )
	end
end


for i in 1..8 do
	showDay( i )
end