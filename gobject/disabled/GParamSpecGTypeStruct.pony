

/*
  Source: /usr/include/glib-2.0/gobject/gparamspecs.h:957
  Original Name: _GParamSpecGType
  Struct Size (bits):  640
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=576,fid: f137]: parent_instance
     000576: [FundamentalType(long unsigned int) size=64]: is_a_type
*/
struct GParamSpecGTypeStruct
    embed parent_instance: GParamSpecStruct = GParamSpecStruct
    var is_a_type: U64 = U64(0)
