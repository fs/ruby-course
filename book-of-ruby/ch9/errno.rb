# The Book of Ruby - http://www.sapphiresteel.com

# puts( Errno.constants )

for err in Errno.constants do 
  errnum = eval( "Errno::#{err}::Errno" )
  puts( "#{err}, #{errnum}" ) 
end

