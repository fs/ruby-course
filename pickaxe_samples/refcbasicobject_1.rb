#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    class SimpleBuilder < BasicObject
      def __puts_at_indent__(string)
        ::Kernel.puts " " * @indent + string
      end
      def method_missing(name, *args, &block)
        @indent ||= 0
        __puts_at_indent__("<#{name}>")
        @indent += 2
        __puts_at_indent__(args.join) unless args.empty?
        yield if ::Kernel.block_given?
        @indent -= 2
        __puts_at_indent__("</#{name}>")
      end
    end

    r = SimpleBuilder.new
    r.person do
      r.name "Dave"
      r.address do
        r.street "123 Main"
        r.city   "Pleasantville"
      end
    end
