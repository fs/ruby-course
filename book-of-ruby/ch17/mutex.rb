# The Book of Ruby - http://www.sapphiresteel.com

require 'thread'
$i = 0

semaphore = Mutex.new

a = Thread.new { 
	semaphore.synchronize{
		1000000.times{ $i += 1 }									
	}
}
				 

b = Thread.new {				
	semaphore.synchronize{
		1000000.times{ $i += 1 }
	}
} 
                    
a.join
b.join
puts( $i )