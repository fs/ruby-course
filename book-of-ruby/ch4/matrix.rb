# The Book of Ruby - http://www.sapphiresteel.com

# note you must 'require' Matrix in order to use the
# Matrix class
require "Matrix"

m1 = Matrix[ [1,2,3,4],
		[5,6,7,8],
		[9,10,11,12],
		[13,14,15,16]  ]

m2 = Matrix[ [10,20,30,40],
		[50,60,70,80],
		[90,100,110,120],
		[130,140,150,160]  ]

m3 = m1+m2
p(m3)

v = Vector[1,2,3,4,5]
v2 = Vector[6,7,8,9,10]
m4 = Matrix.columns([v,v2])
p( m4 )


