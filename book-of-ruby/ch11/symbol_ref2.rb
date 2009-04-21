# The Book of Ruby - http://www.sapphiresteel.com

module One
	class Fred
	end
	$f1 = :Fred
	def self.evalFred( aSymbol )
		puts( eval( aSymbol.id2name ) )	
	end
end

module Two
	Fred = 1
	$f2 = :Fred
	def self.evalFred( aSymbol )
		puts( eval( aSymbol.id2name ) )		
	end
end

def Fred()
	puts( "hello from the Fred method" )
end

$f3 = :Fred

One::evalFred( $f1 )
Two::evalFred( $f2 ) 
method($f3).call 

puts

One::evalFred( $f3 )
Two::evalFred( $f1 ) 
method($f2).call 