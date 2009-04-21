# The Book of Ruby - http://www.sapphiresteel.com

# write a program at runtime!
puts( "Write a program interactively." )
puts( "Enter 'q' to quit." )

input = ""

until input == "q"
	input = gets().chomp()
	if input != "q" then eval( input ) end
end

# At the prompt try entering:
# def x(aStr); puts(aStr.upcase);end
# def y(aStr); puts(aStr.reverse);end
# x("hello world")
# y("hello world")
