#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
static VALUE
bigmul1(void *ptr)
{
    struct big_mul_struct *bms = (struct big_mul_struct*)ptr;
    long i, j;
    VALUE x = bms->x, y = bms->y, z = bms->z;

    /* ... */
    for (i = 0; i < RBIGNUM_LEN(x); i++) {
        if (bms->stop) return Qnil;
        /*
         * do the next digit... 
         */
    }
    return z;
}
