

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:909
  Original Name: _GParamSpecValueArray
  Struct Size (bits):  704
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [PointerType size=64]->[Struct size=576,fid: f137]: element_spec
     000640: [FundamentalType(unsigned int) size=32]: fixed_n_elements
*/
struct GParamSpecValueArrayStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var element_spec: NullablePointer[GParamSpecStruct] = NullablePointer[GParamSpecStruct].none()
    var fixed_n_elements: U32 = U32(0)
