use "glib"
use "gio"

/*
  Source: /usr/include/glib-2.0/gobject/gparam.h:207
  Original Name: _GParamSpec
  Struct Size (bits):  576
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=64,fid: f135]: g_type_instance
     000064: [PointerType size=64]->[FundamentalType(char) size=8]: name
     000128: [Enumeration size=32,fid: f137]: flags
     000192: [FundamentalType(long unsigned int) size=64]: value_type
     000256: [FundamentalType(long unsigned int) size=64]: owner_type
     000320: [PointerType size=64]->[FundamentalType(char) size=8]: _nick
     000384: [PointerType size=64]->[FundamentalType(char) size=8]: _blurb
     000448: [PointerType size=64]->[Struct size=,fid: f68]: qdata
     000512: [FundamentalType(unsigned int) size=32]: ref_count
     000544: [FundamentalType(unsigned int) size=32]: param_id
*/
struct GParamSpecStruct
    embed g_type_instance: GTypeInstanceStruct = GTypeInstanceStruct
    var name: Pointer[U8] = Pointer[U8]
    var flags: I32 = I32(0)
    var value_type: U64 = U64(0)
    var owner_type: U64 = U64(0)
    var nick: Pointer[U8] = Pointer[U8]
    var blurb: Pointer[U8] = Pointer[U8]
    var qdata: NullablePointer[GDataStruct] = NullablePointer[GDataStruct].none()
    var ref_count: U32 = U32(0)
    var param_id: U32 = U32(0)

