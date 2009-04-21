# The Book of Ruby - http://www.sapphiresteel.com

input = ''
puts( "How much would you like to earn per hour? " )
while input != 'q' do
	puts("Enter a number between 1 and 1000 (or 'q' to quit)")
	print("?- ")
	input = gets().chomp()
	if input == 'q' 
		puts( "Bye" )
	elsif input.to_i > 800
		puts( "That's a high rate of pay!" )
	elsif input.to_i <= 800 
		puts( "We can afford that" )	
	end	
end