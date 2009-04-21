# The Book of Ruby - http://www.sapphiresteel.com

p( Symbol.all_symbols )
puts( p( Symbol.all_symbols.length ) ) # shows number of symbols in Ruby
p( Symbol.all_symbols[0,10] )
# p [:a,:b,:c].sort #<= can't sort symbols!
str_arr = Symbol.all_symbols.collect{ |s| s.to_s }
puts( str_arr.sort )