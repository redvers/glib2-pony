

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:768
  Original Name: _GParamSpecUnichar
  Struct Size (bits):  640
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [FundamentalType(unsigned int) size=32]: default_value
*/
struct GParamSpecUnicharStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var default_value: U32 = U32(0)
