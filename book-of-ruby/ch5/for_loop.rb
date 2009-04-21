# The Book of Ruby - http://www.sapphiresteel.com

puts( '--- loop #1 ---' )
for i in [1,2,3]  do 
	puts( i )
end

puts( '--- loop #3 ---' )
# 'do' is optional when for loop is 'multi-line'
for s in ['one','two','three'] #do 
	puts( s )
end


puts( '--- loop #3 ---' )
# 'do' is obligatory when for loop is on a single line
for x in [1, "two", [3,4,5] ] do puts( x ) end   