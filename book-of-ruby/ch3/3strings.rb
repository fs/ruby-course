# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	attr_accessor :name
	attr_accessor :number
	
	def initialize( aName, aNumber )
		@name	= aName
		@number = aNumber
	end
	
	def ten
		return 10
	end
	
end

ob = MyClass.new( "James Bond", "007" )
puts( %Q$My name is #{ob.name} and my number is #{ob.number}$ )

# new lines used as delimiters
puts( %Q
Here's a tab\ta new line\na calculation #{2*3} and a method-call #{ob.ten}
 )

# tabs used as delimiters 
puts( %Q	My name is #{ob.name} and my number is #{ob.number}	 )

# * used as delimiters - note: escape needed for \* in string 
# but not in the evaluated expression #{2*3}
puts( %Q*Here's a tab\ta new line\na calculation using \* #{2*3} and a method-call #{ob.ten}* )

# single quoted string using # as delimiter
puts( %q#My name is \#{ob.name} and my number is \#{ob.number}# )

# a pair of braces [ and ] used as delimiters
puts( %Q[Here's a tab\ta new line\na calculation #{2*3} and a method-call #{ob.ten}] )