# The Book of Ruby - http://www.sapphiresteel.com

def doCalc
	begin
		print( "Enter a number: " )
		aNum = gets().chomp()
		result = 100 / aNum.to_i
	rescue Exception => e		
		result = 0
		puts( "Error: " + e + "\nPlease try again." )
		retry	# retry on exception
	else
		msg = "Result = #{result}"
	ensure
		msg = "You entered '#{aNum}'. " + msg
	end
	return msg
end


puts( doCalc )
