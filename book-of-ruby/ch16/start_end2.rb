# The Book of Ruby - http://www.sapphiresteel.com

puts( /^[a-z 0-9]*$/ =~ 'well hello 123' )	# match at 0
puts( /^[a-z 0-9]*$/ =~ 'Well hello 123' )	# no match due to ^ and uppercase 'W' 
puts( /[a-z 0-9]*$/ =~ 'Well hello 123' )	# no ^, so match made at char 1 'e'

puts( /[a-z 0-9]$/ =~ 'Well hello 123' )	# $ match from end = 13
puts( /^[a-z 0-9]*/ =~ 'Well hello 123' )	# * zero (or more) matches at start ^ = 0
puts( /^[a-z 0-9]+/ =~ 'Well hello 123' )	# + 1 or (or more) matches at start ^ = nil

puts( /[a-z 0-9]*$/ =~ 'Well hello 123' )	# zero or more matches - first match at 1 ('e')

# match empty string?
puts( /^[a-z 0-9]*$/ =~ '' ) # yes (*) - match at 0
puts( /^[a-z 0-9]+$/ =~ '' ) # no  (+) - nil