#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      # Call using "ruby example.rb --size 10k -v -q a.txt b.doc"
      
      require 'getoptlong'
    # Fake out an initial command line
    ARGV.clear.push  *%w(--size 10k -v -q a.txt b.doc)

      # specify the options we accept and initialize
      # the option parser
      
      opts = GetoptLong.new(
        [ "--size",    "-s",            GetoptLong::REQUIRED_ARGUMENT ],
        [ "--verbose", "-v",            GetoptLong::NO_ARGUMENT ],
        [ "--query",   "-q",            GetoptLong::NO_ARGUMENT ],
        [ "--check",   "--valid", "-c", GetoptLong::NO_ARGUMENT ]
      )

      # process the parsed options
      
      opts.each do |opt, arg|
        puts "Option: #{opt}, arg #{arg.inspect}"
      end

      puts "Remaining args: #{ARGV.join(', ')}"
