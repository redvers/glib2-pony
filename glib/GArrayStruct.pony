

/*
  Source: /usr/include/glib-2.0/glib/garray.h:43
  Original Name: _GArray
  Struct Size (bits):  128
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [PointerType size=64]->[FundamentalType(char) size=8]: data
     000064: [FundamentalType(unsigned int) size=32]: len
*/
struct GArrayStruct
  """
  These are struct docs
  """
  var data: Pointer[U8] = Pointer[U8]
  """
  field docs for data?
  """
  var len: U32 = U32(0)
  """
  field docs for len?
  """
