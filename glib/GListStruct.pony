/*
  Source: /usr/include/glib-2.0/glib/glist.h:41
  Original Name: _GList
  Struct Size (bits):  192
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [PointerType size=64]->[FundamentalType(void) size=0]: data
     000064: [PointerType size=64]->[Struct size=192,fid: f78]: next
     000128: [PointerType size=64]->[Struct size=192,fid: f78]: prev
*/
struct GListStruct[A: Any]
    var data: A
    var next: NullablePointer[GListStruct[A]] = NullablePointer[GListStruct[A]].none()
    var prev: NullablePointer[GListStruct[A]] = NullablePointer[GListStruct[A]].none()

  new create(d: A) => data = consume d
