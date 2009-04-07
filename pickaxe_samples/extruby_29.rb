#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
VALUE
rb_check_convert_type(VALUE val, int type, const char *tname, 
                      const char *method)
{
    VALUE v;

    /* always convert T_DATA */
    if (TYPE(val) == type && type != T_DATA) return val;
    v = convert_type(val, tname, method, Qfalse);
    if (NIL_P(v)) return Qnil;
    if (TYPE(v) != type) {
        char *cname = rb_obj_classname(val);
        rb_raise(rb_eTypeError, "can't convert %s to %s (%s#%s gives %s)",
                 cname, tname, cname, method, rb_obj_classname(v));
    }
    return v;
}
