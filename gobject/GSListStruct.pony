/*
  Source: /usr/include/glib-2.0/glib/gslist.h:41
  Original Name: _GSList
  Struct Size (bits):  128
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [PointerType size=64]->[FundamentalType(void) size=0]: data
     000064: [PointerType size=64]->[Struct size=128,fid: f84]: next
*/
struct GSListStruct
    var data: Pointer[None] = Pointer[None]
    var next: NullablePointer[GSListStruct] = NullablePointer[GSListStruct].none()

