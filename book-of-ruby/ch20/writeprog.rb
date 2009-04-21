# The Book of Ruby - http://www.sapphiresteel.com

# a very simple program-writing program
# Enter code at prompt. Enter blank line to eval
# Enter l to list program and q to quit
puts( "Write a program interactively." )
puts( "Enter a blank line to evaluate." )
puts( "Enter 'q' to quit." )

program = ""
input = ""
line = ""

until line.strip() == "q"
	print( "?- " )
	line = gets()
	case( line.strip() )
	when '' 
		puts( "Evaluating..." )
		eval( input )
		program += input
		input = ""		
	when 'l'
		puts( "Program Listing..." )
		puts( program )
	else
		input += line
	end
end

puts( "Goodbye" )

