# The Book of Ruby - http://www.sapphiresteel.com

def dayIs( aDay )
	if aDay == 'Saturday' or aDay == 'Sunday'
		daytype = 'weekend'
	else
		daytype = 'weekday'
	end
	return daytype
end

day1 = "Monday"
day2 = "Saturday"
print(day1 + " is a " + dayIs( day1 ) + "\n" )
print(day2 + " is a " + dayIs( day2 ) + "\n" )