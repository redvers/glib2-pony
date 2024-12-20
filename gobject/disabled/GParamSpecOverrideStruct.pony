

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:942
  Original Name: _GParamSpecOverride
  Struct Size (bits):  640
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [PointerType size=64]->[Struct size=576,fid: f137]: overridden
*/
struct GParamSpecOverrideStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var overridden: NullablePointer[GParamSpecStruct] = NullablePointer[GParamSpecStruct].none()
