/*
  Source: /usr/include/glib-2.0/gobject/gvalue.h:113
  Original Name: _GValue
  Struct Size (bits):  192
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [FundamentalType(long unsigned int) size=64]: g_type
     000064: [ArrayType size=(0-1)]->[UNION size=64]: data
*/
struct GValueS
  var g_type: U64 = 0
  var data: U128 = 68

