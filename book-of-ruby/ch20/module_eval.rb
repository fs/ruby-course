# The Book of Ruby - http://www.sapphiresteel.com

module X
end

class Y
	@@x = 10
	include X
end

X::module_eval{ define_method(:xyz){ puts("hello" ) } }
Y::class_eval{ define_method(:abc){ puts("hello, hello" ) } }
X::class_eval{ define_method(:xyz2){ puts("hello again" ) } }
Y::module_eval{ define_method(:abc2){ puts("hello, hello again" ) } }
String::class_eval{ define_method(:bye){ puts("goodbye" ) } }


ob = Y.new
ob.xyz
ob.abc
ob.xyz2
ob.abc2
"Hello".bye
p( Y.class_eval( "@@x" ) )		