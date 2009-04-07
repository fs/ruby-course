#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        File.fnmatch('*',   '.profile')
        File.fnmatch('*',   '.profile', File::FNM_DOTMATCH)
        File.fnmatch('*',   'dave/.profile')
        File.fnmatch('*',   'dave/.profile', File::FNM_DOTMATCH)
        File.fnmatch('*',   'dave/.profile', File::FNM_PATHNAME)
        File.fnmatch('*/*', 'dave/.profile', File::FNM_PATHNAME)
        STRICT = File::FNM_PATHNAME | File::FNM_DOTMATCH
        File.fnmatch('*/*', 'dave/.profile', STRICT)
