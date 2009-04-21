# The Book of Ruby - http://www.sapphiresteel.com

def showDay( i )
	if i == 1 then puts("It's Monday" )
	elsif i == 2 then puts("It's Tuesday" )
	elsif i == 3 then puts("It's Wednesday" )
	elsif i == 4 then puts("It's Thursday" )
	elsif i == 5 then puts("It's Friday" )
	elsif (6..7) === i then puts( "Yippee! It's the weekend! " )
	else puts( "That's not a real day!" )
	end
end


for i in 1..8 do
	showDay( i )
end
