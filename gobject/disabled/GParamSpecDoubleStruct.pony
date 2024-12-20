

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:837
  Original Name: _GParamSpecDouble
  Struct Size (bits):  832
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [FundamentalType(double) size=64]: minimum
     000640: [FundamentalType(double) size=64]: maximum
     000704: [FundamentalType(double) size=64]: default_value
     000768: [FundamentalType(double) size=64]: epsilon
*/
struct GParamSpecDoubleStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var minimum: F64 = F64(0)
    var maximum: F64 = F64(0)
    var default_value: F64 = F64(0)
    var epsilon: F64 = F64(0)
