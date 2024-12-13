use @g_value_init[GValueS](value: NullablePointer[GValueS] tag, gtype: U64)
use @g_value_set_pointer[None](value: NullablePointer[GValueS] tag, ...)
use @g_value_get_pointer[Pointer[None]](value: NullablePointer[GValueS] tag)

/*
  Source: /usr/include/glib-2.0/gobject/gvalue.h:113
  Original Name: _GValue
  Struct Size (bits):  192
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [FundamentalType(long unsigned int) size=64]: g_type
     000064: [ArrayType size=(0-1)]->[UNION size=64]: data
*/
class GValue[A: Any]
  var ptr: GValueS

  new create() =>
   ptr = GValueS

  fun ref init(gtype: U64) =>
    ptr = @g_value_init(NullablePointer[GValueS](ptr), gtype)

  fun ref set_pointer(data: A) =>
    @g_value_set_pointer(NullablePointer[GValueS](ptr), data)

  fun ref get_pointer[B: Any](): B =>
    @g_value_get_pointer[B](NullablePointer[GValueS](ptr))

