#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        def Object.const_missing(name)
          @looked_for ||= {}
          str_name = name.to_s
          raise "Class not found: #{name}" if @looked_for[str_name]
          @looked_for[str_name] = 1
          file = str_name.downcase
          require file
          klass = const_get(name)
          return klass if klass
          raise "Class not found: #{name}"
        end
