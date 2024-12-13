/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:252
  Original Name: _GObject
  Struct Size (bits):  192
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=64,fid: f135]: g_type_instance
     000064: [FundamentalType(unsigned int) size=32]: ref_count
     000128: [PointerType size=64]->[Struct size=,fid: f68]: qdata
*/
struct GObjectS
    embed g_type_instance: GTypeInstanceS = GTypeInstanceS
    var ref_count: U32 = U32(0)
    var qdata: NullablePointer[GDataS] = NullablePointer[GDataS].none()

