

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:621
  Original Name: _GParamSpecChar
  Struct Size (bits):  640
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [FundamentalType(signed char) size=8]: minimum
     000584: [FundamentalType(signed char) size=8]: maximum
     000592: [FundamentalType(signed char) size=8]: default_value
*/
struct GParamSpecCharStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var minimum: I8 = I8(0)
    var maximum: I8 = I8(0)
    var default_value: I8 = I8(0)
