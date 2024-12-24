use @g_value_init[GValueStruct](value: NullablePointer[GValueStruct] tag, gtype: U64)
use @g_value_set_pointer[None](value: NullablePointer[GValueStruct] tag, ...)
use @g_value_get_pointer[Pointer[None]](value: NullablePointer[GValueStruct] tag)
use @g_value_set_string[None](value: NullablePointer[GValueStruct] tag, ...)
use @g_value_get_string[Pointer[U8]](value: NullablePointer[GValueStruct] tag)

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

  new init(gtype: U64) =>
    ptr = GValueStruct
    ptr = @g_value_init(NullablePointer[GValueStruct](ptr), gtype)

  new init_from_name(gtype: String val)? =>
    ptr = GValueStruct
    var g_type: U64 = GType.from_name(gtype)
    if (g_type == 0) then error end
    ptr = @g_value_init(NullablePointer[GValueStruct](ptr), g_type)

  fun ref set_pointer[C: Any](data: C) =>
    @g_value_set_pointer(NullablePointer[GValueStruct](ptr), data)

  fun ref get_pointer[B: Any](): B =>
    @g_value_get_pointer[B](NullablePointer[GValueStruct](ptr))

  fun ref set_string(data: String val) =>
    @g_value_set_string(NullablePointer[GValueStruct](ptr), data.cstring())

  fun ref get_string(): String val =>
    String.from_cstring(@g_value_get_string(NullablePointer[GValueStruct](ptr))).clone()

  new init_u8() =>
    ptr = GValueStruct
    @g_value_init(NullablePointer[GValueStruct](ptr),
      GType.from_name("gchar")
    )
  new init_bool() =>
    ptr = GValueStruct
    @g_value_init(NullablePointer[GValueStruct](ptr),
      GType.from_name("gint")
    )
  new init_int() =>
    ptr = GValueStruct
    @g_value_init(NullablePointer[GValueStruct](ptr),
      GType.from_name("gint")
    )
  new init_float() =>
    ptr = GValueStruct
    @g_value_init(NullablePointer[GValueStruct](ptr),
      GType.from_name("gfloat")
    )

  new init_double() =>
    ptr = GValueStruct
    @g_value_init(NullablePointer[GValueStruct](ptr),
      GType.from_name("gdouble")
    )
  new init_string() =>
    ptr = GValueStruct
    @g_value_init(NullablePointer[GValueStruct](ptr),
      GType.from_name("gchararray")
    )
  new init_param() =>
    ptr = GValueStruct
    @g_value_init(NullablePointer[GValueStruct](ptr),
      GType.from_name("GParam")
    )
  new init_object() =>
    ptr = GValueStruct
    @g_value_init(NullablePointer[GValueStruct](ptr),
      GType.from_name("GObject")
    )
  new init_variant() =>
    ptr = GValueStruct
    @g_value_init(NullablePointer[GValueStruct](ptr),
      GType.from_name("GVariant")
    )

