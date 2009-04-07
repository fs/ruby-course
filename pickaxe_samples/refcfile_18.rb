#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        File.fnmatch('c??t',   'cat')
        File.fnmatch('c*',     'cats')
        File.fnmatch('c/**/t', 'c/a/b/c/t')
        File.fnmatch('c**t',   'c/a/b/c/t')
        File.fnmatch('c**t',   'cat')
        File.fnmatch('**.txt', 'notes.txt')
        File.fnmatch('**.txt', 'some/dir/tree/notes.txt')
        File.fnmatch('c*t',    'cat')
        File.fnmatch('c\at',   'cat')
        File.fnmatch('c\at',   'cat', File::FNM_NOESCAPE)
        File.fnmatch('a?b',    'a/b')
        File.fnmatch('a?b',    'a/b', File::FNM_PATHNAME)
