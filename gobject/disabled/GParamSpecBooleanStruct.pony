

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:653
  Original Name: _GParamSpecBoolean
  Struct Size (bits):  640
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [FundamentalType(int) size=32]: default_value
*/
struct GParamSpecBooleanStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var default_value: I32 = I32(0)
