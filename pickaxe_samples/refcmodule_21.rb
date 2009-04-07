#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class Interpreter
          def do_a() print "there, "; end
          def do_d() print "Hello ";  end
          def do_e() print "!\n";     end
          def do_v() print "Dave";    end

          Dispatcher = {
            'a' => instance_method(:do_a),
            'd' => instance_method(:do_d),
            'e' => instance_method(:do_e),
            'v' => instance_method(:do_v)
          }

          def interpret(string)
            string.each_char {|ch| Dispatcher[ch].bind(self).call }
          end
        end

        interpreter = Interpreter.new
        interpreter.interpret('dave')
