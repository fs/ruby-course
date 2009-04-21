# The Book of Ruby - http://www.sapphiresteel.com

def timesRepeat( aNum )
    for i in 1..aNum do 
		yield i
	end
end

timesRepeat( 3 ){  |i| puts("[#{i}] hello world") }
timesRepeat( 2 ){  |i|
				print("Enter a word: " )
				w = gets()
				puts( "[#{i}] That word backwards is #{w.reverse}" )
				}

def timesRepeat2( aNum, anArray )
    anArray.each{ |anitem| 
		yield( anitem )
	}
end

timesRepeat2( 3, ["hello","good day","how do you do"] ){ |x| puts(x) }
timesRepeat2( 3, [1,2,3] ){ |x| puts(x) }