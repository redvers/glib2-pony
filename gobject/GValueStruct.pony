/*
 * name: Value
 * c:type: GValue
 * glib:is-gtype-struct-for:
 * opaque:
 * disguised:
 * glib:type-name: GValue
 * glib:get-type: g_value_get_type
 * c:symbol-prefix: value
 * c:copy-function:
 * c:free-function:
 * deprecated:
 */
/*
  Source: /usr/include/glib-2.0/gobject/gvalue.h:113
  Original Name: _GValue
  Struct Size (bits):  192
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [FundamentalType(long unsigned int) size=64]: g_type
     000064: [ArrayType size=(0-1)]->[UNION size=64]: data
*/

struct GValueStruct
"""
An opaque structure used to hold different types of values.

The data within the structure has protected scope: it is accessible only
to functions within a #GTypeValueTable structure, or implementations of
the g_value_*() API. That is, code portions which implement new fundamental
types.

#GValue users cannot make any assumptions about how data is stored
within the 2 element @data union, and the @g_type member should
only be accessed through the G_VALUE_TYPE() macro.
"""
  var g_type: U64 = 0
  var data: U128 = 0
