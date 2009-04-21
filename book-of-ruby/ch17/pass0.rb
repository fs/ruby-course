# The Book of Ruby - http://www.sapphiresteel.com

a = Thread.new { print "a"; Thread.pass;
				 print "b"; Thread.pass;
                 print "c" }
b = Thread.new { print "x"; Thread.pass;
                 print "y"; Thread.pass;
				 print "z" }
a.join
b.join