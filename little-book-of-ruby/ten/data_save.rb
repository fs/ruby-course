# Ruby Sample program from www.sapphiresteel.com 

require 'yaml'

#array for cd objects
$cd_arr = Array.new

# file name for saving/loading
$fn = 'cd_db.yml'

# ancestor generic CD class
class CD
    
    # initialize variables parsed from array argument
    # ( arr )
    def initialize( arr )
        @name          = arr[0]
        @artist        = arr[1]
        @numtracks     = arr[2]
    end
    
    # return an array containing all instance variables
    # of a CD object
    def getdetails
        return[@name, @artist, @numtracks]
    end
end

# PopCD is a 'child' class of CD
class PopCD < CD
    
    # call super to pass array, arr, to parent (CD) class
    # This initializes three instance variables. This
    # method the initializes one more: @genre
    def initialize( arr )
        super( arr  )
        @genre = arr[3]
    end
    
    # calls sup to get arra from CD class getdetails
    # method. Then adds @genre to the end of the array
    # and returns the entier 4-item array
    def getdetails        
        return( super << @genre )
    end
end

class ClassicalCD < CD
    def initialize( arr )
        super( arr )
        @conductor  = arr[3]
        @composer   = arr[4]
    end
    
    def getdetails        
        return( super << @conductor << @composer )
    end    
end


# some methods to get data from the user
def otherCD
    print( "Enter CD name: " )
    cd_name = gets().chomp()
    print( "Enter artist's name: " )
    a_name = gets().chomp()
    print( "Enter number of tracks: " )
    num_tracks = gets().chomp().to_i
    return [cd_name, a_name, num_tracks ]
end

def classicCD
    cdInfo= otherCD
    print( "Enter conductor's name: " )
    con_name= gets().chomp()
    print( "Enter composer's name: " )
    comp_name = gets().chomp()
    cdInfo << con_name << comp_name
    return cdInfo
end

def popCD
    cdInfo= otherCD
    print( "Enter genre of music: " )
    genre = gets().chomp()
    cdInfo << genre
    return cdInfo
end

# adds a CD object to the array variable, $cd_arr
def addCD( aCD )
    $cd_arr << aCD
end

# saves data to disk in YAML format
# the to_yaml method converts to YAML format
def saveDB      
    File.open( $fn, 'w' ) {
        |f|
        f.write($cd_arr.to_yaml)
    }
end

# loads data from disk and recreates the array of
# cd objects, $cd_arr, from the data
def loadDB
    input_data = File.read( $fn )
    $cd_arr = YAML::load( input_data )
end

# prints the data from the array to screen in human-
# readable (YAML) format
def showData
    puts( $cd_arr.to_yaml )
end


# Start of Program

if File.exist?( $fn ) then
    loadDB
    showData
else
    puts( "The file #{$fn} cannot be found.")
end


# 'main' loop
ans = ''
until ans == 'q' do  
  puts( "Create (P)op CD (C)lassical CD, (O)ther CD - (S)ave or (Q)uit?" )
  print( "> " )
  ans = gets[0].chr().downcase()
  case ans 
	when 'p' then addCD( PopCD.new( popCD() ) )
	when 'c' then addCD( ClassicalCD.new( classicCD() ) )
	when 'o' then addCD( CD.new( otherCD() ) )
    when 's' then saveDB
  end
  showData
end 
