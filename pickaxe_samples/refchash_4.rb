#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         class ConfigFile
           def initialize(name)
             @content = File.read(name)
           end
           def to_hash
             result = {}
             @content.scan(/^(\w+):\s*(.*)/) do |name, value|
               result[name] = value
             end
             result
           end
         end
         config = ConfigFile.new("some_config")
         Hash.try_convert(config)
