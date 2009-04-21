# The Book of Ruby - http://www.sapphiresteel.com

puts("What shall we call this class? ")
className = gets.strip().capitalize()		# make sure class name starts with capital letter
Object.const_set(className,Class.new)		# create new class
puts("I'll give it a method called 'myname'" )
className = Object.const_get(className)
className::module_eval{ define_method(:myname){ 
			puts("The name of my class is '#{self.class}'" ) } 
			}
x = className.new
x.myname