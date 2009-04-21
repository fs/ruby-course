# The Book of Ruby - http://www.sapphiresteel.com

puts('Block #3' )
b3 = [1,2,3].collect{|x| x*2}    
puts( b3.inspect )

puts('Block #4' )
b4 = ["hello","good day","how do you do"].collect{|x| x.capitalize }
puts( b4.inspect )

puts('Block #5' )
b5 = ["hello","good day","how do you do"].each{|x| x.capitalize }      
puts(b5.inspect)

puts('Block #6' )
b6 = ["hello","good day","how do you do"].each{|x| x.capitalize! }      
puts(b6.inspect)

puts('---Block #7---' )
newstr = ''
a = "hello world".split(//).each{ |x| newstr << x.capitalize
	puts(newstr) 
}
puts("a.inspect=#{a.inspect}")
puts("newsstr='#{newstr}'")

puts('---Block #8---' )
newstr = ''
a = "hello world".each_byte{|x| newstr << (x.chr).capitalize
	puts(newstr) 
}
puts("a.inspect=#{a.inspect}")
puts("newsstr='#{newstr}'")
