#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
class ExampleDate
  def once(*ids) # :nodoc:
    for id in ids
      module_eval <<-"end;"
        alias_method :__#{id.to_i}__, :#{id.to_s}
        private :__#{id.to_i}__
        def #{id.to_s}(*args, &block)
          (@__#{id.to_i}__ ||= [__#{id.to_i}__(*args, &block)])[0]
        end
      end;
    end
  end
end
