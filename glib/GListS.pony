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
struct GListS[A: Any]
    var data: A
    var next: NullablePointer[GListS[A]] = NullablePointer[GListS[A]].none()
    var prev: NullablePointer[GListS[A]] = NullablePointer[GListS[A]].none()

  new create(d: A) => data = consume d
