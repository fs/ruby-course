# The Book of Ruby - http://www.sapphiresteel.com

def amethod( doThis )
	if (doThis == :deletefiles) then
		puts( 'Now deleting files...')
	elsif (doThis == :formatdisk) then
		puts( 'Now formatting disk...')
	else
		puts( "Sorry, command not understood." )
	end
end

def anotherMethod( doThis )
	case doThis 
		when :deletefiles : puts( 'Now deleting files...')
		when :formatdisk : puts( 'Now formatting disk...')
		else  puts( "Sorry, command not understood." )
	end
end


amethod( :deletefiles )
amethod( :formatdisk )
amethod( :eatlunch )

anotherMethod( :deletefiles )
anotherMethod( :formatdisk )
anotherMethod( :eatlunch )

