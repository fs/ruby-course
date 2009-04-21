def showstring
	puts 'Hello'
end

def showname(name)
	puts "Hello #{name}"
end

def return_name(first_name, last_name)
	return "Hello #{first_name} #{last_name}"
end

def return_name2 first_name, last_name
	return "Hello #{first_name} #{last_name}"
end


# so which object owns these methods, anyhow? 
# The following test reveals all...
print "The 'free standing methods' in this code belong to an object named: "
puts(self)
print 'which is an instance of the class: '
puts(self.class)

#Free-standing methods (like those above which are not defined within a 
#specific class) become methods (strictly speaking, 'private' methods) of
#the Object class. Ruby creates the 'main' object automatically. 
#The following code displays a sorted list of the private methods available 
#to the main object. Look carefully and you will find showname, return_name 
# and return_name2 in that list. 
puts "It contains these private methods: "
puts(self.private_methods.sort)

#Just to prove that these methods are actually bound into the Object class
#itself, uncomment the code below and you will see that showname, return_name 
#and return_name2 can also be found among the Object class's private methods!
#
#
# puts(Object.private_methods.sort)