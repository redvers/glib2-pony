

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:702
  Original Name: _GParamSpecLong
  Struct Size (bits):  768
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [FundamentalType(long int) size=64]: minimum
     000640: [FundamentalType(long int) size=64]: maximum
     000704: [FundamentalType(long int) size=64]: default_value
*/
struct GParamSpecLongStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var minimum: I64 = I64(0)
    var maximum: I64 = I64(0)
    var default_value: I64 = I64(0)
