#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
static VALUE
rb_big_mul0(VALUE x, VALUE y)
{
  struct big_mul_struct bms;
  volatile VALUE z;

  /* ... */

  bms.x = x;
  bms.y = y;

  bms.stop = Qfalse;

  if (RBIGNUM_LEN(x) + RBIGNUM_LEN(y) > 10000) {
    z = rb_thread_blocking_region(bigmul1, &bms, rb_big_stop, &bms.stop);
  }
  else {
    z = bigmul1(&bms);
  }

  return z;
}
