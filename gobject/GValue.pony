use @g_value_init[GValueStruct](value: NullablePointer[GValueStruct] tag, gtype: U64)
use @g_value_set_pointer[None](value: NullablePointer[GValueStruct] tag, ...)
use @g_value_set_string[None](value: NullablePointer[GValueStruct] tag, ...)
use @g_value_get_pointer[Pointer[None]](value: NullablePointer[GValueStruct] tag)

/*
  Source: /usr/include/glib-2.0/gobject/gvalue.h:113
  Original Name: _GValue
  Struct Size (bits):  192
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [FundamentalType(long unsigned int) size=64]: g_type
     000064: [ArrayType size=(0-1)]->[UNION size=64]: data
*/
class GValue
  var ptr: GValueStruct

  new create() =>
   ptr = GValueStruct

  fun ref init(gtype: U64) =>
    ptr = @g_value_init(NullablePointer[GValueStruct](ptr), gtype)

  fun ref set_pointer[C: Any](data: C) =>
    @g_value_set_string(NullablePointer[GValueStruct](ptr), data)

  fun ref get_pointer[B: Any](): B =>
    @g_value_get_pointer[B](NullablePointer[GValueStruct](ptr))

