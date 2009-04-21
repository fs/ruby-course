# Ruby Sample program from www.sapphiresteel.com

def showDay( i )
	case( i )
		when 1 : puts("It's Monday" )
		when 2 : puts("It's Tuesday" )
		when 3 : puts("It's Wednesday" )
		when 4 : puts("It's Thursday" )
		when 5 : puts("It's Friday" )
		when (6..7) : puts( "Yippee! It's the weekend! " )
		else puts( "That's not a real day!" )
	end
end


for i in 1..8 do
	showDay( i )
end