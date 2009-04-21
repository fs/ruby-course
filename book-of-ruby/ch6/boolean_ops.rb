# The Book of Ruby - http://www.sapphiresteel.com

# Example 1
if ( 1==3 ) and (2==1) || (3==3) then 
	puts('true') 
else puts('false') 
end

# Example 2
if ( 1==3 ) and (2==1) or (3==3) then 
	puts('true') 
else puts('false') 
end

# Example 1 (b) – now returns true
if (( 1==3 ) and (2==1)) || (3==3) then 
	puts('true') 
else puts('false') 
end

# Example 2 (b) – now returns false
if ( 1==3 ) and ((2==1) or (3==3)) then 
	puts('true') 
else puts('false') 
end

