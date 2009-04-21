# The Book of Ruby - http://www.sapphiresteel.com

$i = 0

a = Thread.new { 
	1000000.times{ $i += 1 }									
}
				 

b = Thread.new {				
	1000000.times{ $i += 1 }
} 
                    
a.join
b.join
puts( $i )