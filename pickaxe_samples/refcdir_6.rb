#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        Dir.chdir("testdir") 
        Dir["config.?"]
        Dir.glob("config.?")
        Dir.glob("*.[a-z][a-z]")
        Dir.glob("*.[^r]*")
        Dir.glob("*.{rb,h}")
        Dir.glob("*")
        Dir.glob("*", File::FNM_DOTMATCH)

        Dir.chdir("..")
        Dir.glob("code/**/fib*.rb")
        Dir.glob("**/rdoc/fib*.rb")
