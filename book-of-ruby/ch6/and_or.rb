# The Book of Ruby - http://www.sapphiresteel.com

def dayIs( aDay )
	working_overtime = true
	if aDay == 'Saturday' or (aDay == 'Sunday' and not working_overtime)
		daytype = 'holiday'
		puts( "Hurrah!" )
	else
		daytype = 'working day'
	end
	return daytype
end



day1 = "Monday"
day2 = "Saturday"
print(day1 + " is a " + dayIs( day1 ) + "\n" )
print(day2 + " is a " + dayIs( day2 ) + "\n" )