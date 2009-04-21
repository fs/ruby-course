# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
 def initialize
   @aVar = "Hello world"
 end
end

ob = MyClass.new
p( ob.instance_eval { @aVar } )			#=> "Hello world"
p( ob.instance_eval( "@aVar" ) )		#=> "Hello world"
# p( ob.eval( "@aVar" )  )				#=> error: eval is a private method

# class Object
	public :eval						#=> Try commenting this out!
# end

p( ob.eval( "@aVar" ) )					#=> "Hello world"