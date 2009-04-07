#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'readline'
include Readline

require 'abbrev'

COMMANDS = %w{ exit inc dec }

ABBREV = COMMANDS.abbrev

Readline.completion_proc = proc do |string|
  ABBREV[string]
end

value = 0

loop do

  cmd = readline("wibble [#{value}]: ", true)

  break if cmd.nil?

  case cmd.strip
  when "exit"
    break
  when "inc"
    value += 1
  when "dec"
    value -= 1
  else
    puts "Invalid command #{cmd}"
  end

end
