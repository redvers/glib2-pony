/*
  Source: /usr/include/glib-2.0/gobject/gtype.h:461
  Original Name: _GTypeInstance
  Struct Size (bits):  64
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [PointerType size=64]->[Struct size=64,fid: f135]: g_class
*/
struct GTypeInstanceStruct
    var g_class: NullablePointer[GTypeClassStruct] = NullablePointer[GTypeClassStruct].none()
