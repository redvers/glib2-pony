

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:668
  Original Name: _GParamSpecInt
  Struct Size (bits):  704
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [FundamentalType(int) size=32]: minimum
     000608: [FundamentalType(int) size=32]: maximum
     000640: [FundamentalType(int) size=32]: default_value
*/
struct GParamSpecIntStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var minimum: I32 = I32(0)
    var maximum: I32 = I32(0)
    var default_value: I32 = I32(0)
