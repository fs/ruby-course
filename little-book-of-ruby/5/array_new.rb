# Ruby Sample program from www.sapphiresteel.com 

# all these are ok
arrayob = Array.new([1,2,3])
arrayob = Array.new( [1,2,3] )
arrayob = Array.new [1,2,3]

# but this one isn't
 arrayob = Array.new[1,2,3]

p( arrayob )