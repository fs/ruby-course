# Ruby Sample program from www.sapphiresteel.com 

$hours_asleep = 0 # variables beginning with $ are global


def tired	
	if $hours_asleep >= 8 then
	    $hours_asleep = 0
 		return false
 	else
 		$hours_asleep += 1
 		return true
 	end 		
end

def snore
	puts('snore....')
end

def sleep
 	puts("z" * $hours_asleep ) 
end

while tired do sleep
end
puts("I'm wide awake and ready to face the day!")

while tired 
	sleep
end
puts("I'm wide awake and ready to face a 2nd day!")


sleep while tired
puts("I'm wide awake and ready to face a 3rd day!")

begin 
	sleep 
	snore
end while tired
puts("I'm wide awake and ready to face a 4th day!")