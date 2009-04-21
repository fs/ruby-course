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

showstring
showname('Fred')
puts(return_name('Mary Mary', 'Quite-Contrary'))
puts(return_name('Little Jack', 'Horner'))