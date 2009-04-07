#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
def rb_thread_blocking_region(param, unblock_function, unblock_flag)
  release_lock(GVL)
  begin
    yield(param)
  ensure
    acquire_lock(GVL)
  end
end

rb_thread_blocking_region(task_data, ...) do |data|
  # some long running external call
end
