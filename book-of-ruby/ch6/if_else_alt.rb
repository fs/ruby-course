# The Book of Ruby - http://www.sapphiresteel.com

def dayIs( aDay )
	(aDay == 'Saturday' or aDay == 'Sunday') ?	
		daytype = 'weekend' :
		daytype = 'weekday'	
	return daytype
end


x = 11
x == 10 ? puts("it's 10") : puts( "it's some other number" )


day1 = "Monday"
day2 = "Saturday"
print(day1 + " is a " + dayIs( day1 ) + "\n" )
print(day2 + " is a " + dayIs( day2 ) + "\n" )