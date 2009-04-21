# The Book of Ruby - http://www.sapphiresteel.com

FULLMOON = true #<= try changing this to false

class Creature	
	def initialize( aSpeech )
		@speech = aSpeech
	end
	
	def talk
		puts( @speech )
	end
end

cat = Creature.new( "miaow" )
dog = Creature.new( "woof" )
budgie = Creature.new( "Who's a pretty boy, then!" )
werewolf = Creature.new( "growl" )

def werewolf.howl
	if FULLMOON then
		puts( "How-oo-oo-oo-oo!" )
	else
		talk
	end
end

werewolf.howl
#				You can try out these...
# werewolf.talk
# budgie.talk
#				But...
# budgie.howl	#<= this won't work!
