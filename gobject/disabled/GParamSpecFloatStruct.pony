

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:817
  Original Name: _GParamSpecFloat
  Struct Size (bits):  704
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [FundamentalType(float) size=32]: minimum
     000608: [FundamentalType(float) size=32]: maximum
     000640: [FundamentalType(float) size=32]: default_value
     000672: [FundamentalType(float) size=32]: epsilon
*/
struct GParamSpecFloatStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var minimum: F32 = F32(0)
    var maximum: F32 = F32(0)
    var default_value: F32 = F32(0)
    var epsilon: F32 = F32(0)
