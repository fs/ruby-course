#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
static int
rb_read_internal(int fd, void *buf, size_t count)
{
  struct io_internal_struct iis;
  iis.fd = fd;
  iis.buf = buf;
  iis.capa = count;

    return rb_thread_blocking_region(internal_read_func, &iis,
                                     RUBY_UBF_IO, 0);
}
