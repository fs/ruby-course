#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
# == Synopsis
#
# Display the current date and time, optionally honoring
# a format string.
#
# == Usage
#
#    ruby showtime.rb  [ -h | --help ] [ -f | --fmt fmtstring ]
#
# fmtstring::
#    A +strftime+ format string controlling the
#    display of the date and time. If omitted, 
#    use <em>"%Y-%m-%d %H:%M"</em>
#
# == Author
# Dave Thomas, The Pragmatic Programmers, LLC
#
# == Copyright
# Copyright (c) 2004 The Pragmatic Programmers.
# Licensed under the same terms as Ruby.

require 'optparse'
require 'rdoc/usage'

fmt = "%Y-%m-%d %H:%M"
opts = OptionParser.new
opts.on("-h", "--help") { RDoc::usage }
opts.on("-f", "--fmt FMTSTRING") {|str| fmt = str }
opts.parse(ARGV) rescue RDoc::usage('usage')

puts Time.now.strftime(fmt)
