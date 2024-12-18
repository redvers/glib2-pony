

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:859
  Original Name: _GParamSpecString
  Struct Size (bits):  832
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [PointerType size=64]->[FundamentalType(char) size=8]: default_value
     000640: [PointerType size=64]->[FundamentalType(char) size=8]: cset_first
     000704: [PointerType size=64]->[FundamentalType(char) size=8]: cset_nth
     000768: [FundamentalType(char) size=8]: substitutor
     000776: [FundamentalType(unsigned int) size=32]: null_fold_if_empty
     000777: [FundamentalType(unsigned int) size=32]: ensure_non_null
*/
struct GParamSpecStringStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var default_value: Pointer[U8] = Pointer[U8]
    var cset_first: Pointer[U8] = Pointer[U8]
    var cset_nth: Pointer[U8] = Pointer[U8]
    var substitutor: U8 = U8(0)
    var null_fold_if_empty: U32 = U32(0)
    var ensure_non_null: U32 = U32(0)
