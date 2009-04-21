# The Book of Ruby - http://www.sapphiresteel.com

a = Thread.new { print "a"; 
				 print "b"; 
                 print "c" }
b = Thread.new { print "x"; 
                 print "y"; 
				 print "z" }
a.join
b.join