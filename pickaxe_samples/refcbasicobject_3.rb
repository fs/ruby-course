#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class Recorder < BasicObject
          attr_reader :__calls__
          def method_missing(name, *args, &block)
            @__calls__ ||= []
            @__calls__ << [ name, args ]
          end
          def record(&block)
            instance_eval(&block)
          end
        end

        r = Recorder.new
        r.record do
          disable "safety"
          pull    "control rod", dir: "out"
          run
        end

        p r.__calls__
