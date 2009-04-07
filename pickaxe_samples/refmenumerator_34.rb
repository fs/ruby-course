#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        Dir.mkdir("sorteg")
        Dir.chdir("sorteg")
        system("touch -t 08071200 mon")
        system("touch -t 08081200 tues")
        system("touch -t 08091200 wed")
        system("touch -t 08101200 thurs")
        sorted = Dir["*"].sort_by {|f| test(?M, f)}

        sorted
        system("rm mon tues wed thurs")
        Dir.chdir("..")
        Dir.rmdir("sorteg")
