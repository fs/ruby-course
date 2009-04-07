#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class Demo
    @@var = 99
    CONST = 1.23

    private
      def private_method
      end
    protected
      def protected_method
      end
    public
      def public_method
        @inst = 1
        i = 1
        j = 2
        local_variables
      end

    def Demo.class_method
    end
  end

  Demo.private_instance_methods(false)
  Demo.protected_instance_methods(false)
  Demo.public_instance_methods(false)
  Demo.singleton_methods(false)
  Demo.class_variables
  Demo.constants(false)

  demo = Demo.new
  demo.instance_variables
  # Get 'public_method' to return its local variables
  # and set an instance variable
  demo.public_method
  demo.instance_variables
