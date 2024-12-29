

/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:556
  Original Name: g_object_add_toggle_ref/usr/include/glib-2.0/gobject/gobject.h:556

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_add_toggle_ref[None](gobject: GObjectStruct tag, notify: Pointer[None] tag, data: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:525
  Original Name: g_object_add_weak_pointer/usr/include/glib-2.0/gobject/gobject.h:525

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_add_weak_pointer[None](gobject: GObjectStruct tag, weakpointerlocation: Pointer[Pointer[None]] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gbinding.h:128
  Original Name: g_object_bind_property_full/usr/include/glib-2.0/gobject/gbinding.h:128

  Return Value: [PointerType size=64]->[Struct size=,fid: f144]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [Enumeration size=32,fid: f144]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
//use @g_object_bind_property_full[GBindingStruct](source: Pointer[None] tag, sourceproperty: Pointer[U8] tag, target: Pointer[None] tag, targetproperty: Pointer[U8] tag, flags: I32, transformto: Pointer[None] tag, transformfrom: Pointer[None] tag, userdata: Pointer[None] tag, notify: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gbinding.h:122
  Original Name: g_object_bind_property/usr/include/glib-2.0/gobject/gbinding.h:122

  Return Value: [PointerType size=64]->[Struct size=,fid: f144]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [Enumeration size=32,fid: f144]
*/
//use @g_object_bind_property[GBindingStruct](source: Pointer[None] tag, sourceproperty: Pointer[U8] tag, target: Pointer[None] tag, targetproperty: Pointer[U8] tag, flags: I32)



/*
  Source: /usr/include/glib-2.0/gobject/gbinding.h:138
  Original Name: g_object_bind_property_with_closures/usr/include/glib-2.0/gobject/gbinding.h:138

  Return Value: [PointerType size=64]->[Struct size=,fid: f144]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [Enumeration size=32,fid: f144]
    [PointerType size=64]->[Struct size=256,fid: f138]
    [PointerType size=64]->[Struct size=256,fid: f138]
*/
//use @g_object_bind_property_with_closures[GBindingStruct](source: Pointer[None] tag, sourceproperty: Pointer[U8] tag, target: Pointer[None] tag, targetproperty: Pointer[U8] tag, flags: I32, transformto: GClosureStruct tag, transformfrom: GClosureStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:405
  Original Name: g_object_class_find_property/usr/include/glib-2.0/gobject/gobject.h:405

  Return Value: [PointerType size=64]->[Struct size=576,fid: f137]

  Arguments:
    [PointerType size=64]->[Struct size=1088,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_class_find_property[GParamSpecStruct](oclass: GObjectClassStruct tag, propertyname: Pointer[U8] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:415
  Original Name: g_object_class_install_properties/usr/include/glib-2.0/gobject/gobject.h:415

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1088,fid: f143]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[PointerType size=64]->[Struct size=576,fid: f137]
*/
use @g_object_class_install_properties[None](oclass: GObjectClassStruct tag, npspecs: U32, pspecs: Pointer[GParamSpecStruct] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:401
  Original Name: g_object_class_install_property/usr/include/glib-2.0/gobject/gobject.h:401

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1088,fid: f143]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[Struct size=576,fid: f137]
*/
use @g_object_class_install_property[None](oclass: GObjectClassStruct tag, propertyid: U32, pspec: GParamSpecStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:408
  Original Name: g_object_class_list_properties/usr/include/glib-2.0/gobject/gobject.h:408

  Return Value: [PointerType size=64]->[PointerType size=64]->[Struct size=576,fid: f137]

  Arguments:
    [PointerType size=64]->[Struct size=1088,fid: f143]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
//use @g_object_class_list_properties[Pointer[NullablePointer[GParamSpecStruct]]](oclass: GObjectClassStruct tag, nproperties: Pointer[U32] tag)
use @g_object_class_list_properties[Pointer[NullablePointer[GParamSpecStruct]]](oclass: NullablePointer[GObjectClassStruct] tag, nproperties: Pointer[U32] tag)




/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:411
  Original Name: g_object_class_override_property/usr/include/glib-2.0/gobject/gobject.h:411

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1088,fid: f143]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_class_override_property[None](oclass: GObjectClassStruct tag, propertyid: U32, name: Pointer[U8] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:664
  Original Name: g_object_compat_control/usr/include/glib-2.0/gobject/gobject.h:664

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_compat_control[U64](what: U64, data: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:463
  Original Name: g_object_connect/usr/include/glib-2.0/gobject/gobject.h:463

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_connect[Pointer[None]](pobject: Pointer[None] tag, signalspec: Pointer[U8] tag, ...)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:467
  Original Name: g_object_disconnect/usr/include/glib-2.0/gobject/gobject.h:467

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_disconnect[None](pobject: Pointer[None] tag, signalspec: Pointer[U8] tag, ...)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:610
  Original Name: g_object_dup_data/usr/include/glib-2.0/gobject/gobject.h:610

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_dup_data[Pointer[None]](gobject: GObjectStruct tag, key: Pointer[U8] tag, dupfunc: Pointer[None] tag, userdata: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:581
  Original Name: g_object_dup_qdata/usr/include/glib-2.0/gobject/gobject.h:581

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_dup_qdata[Pointer[None]](gobject: GObjectStruct tag, quark: U32, dupfunc: Pointer[None] tag, userdata: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:651
  Original Name: g_object_force_floating/usr/include/glib-2.0/gobject/gobject.h:651

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
*/
use @g_object_force_floating[None](gobject: GObjectStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:497
  Original Name: g_object_freeze_notify/usr/include/glib-2.0/gobject/gobject.h:497

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
*/
use @g_object_freeze_notify[None](gobject: GObjectStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:594
  Original Name: g_object_get_data/usr/include/glib-2.0/gobject/gobject.h:594

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_get_data[Any tag](gobject: GObjectStruct tag, key: Pointer[U8] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:493
  Original Name: g_object_get_property/usr/include/glib-2.0/gobject/gobject.h:493

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f136]
*/
use @g_object_get_property[None](gobject: GObjectStruct tag, propertyname: Pointer[U8] tag, value: GValueStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:565
  Original Name: g_object_get_qdata/usr/include/glib-2.0/gobject/gobject.h:565

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [FundamentalType(unsigned int) size=32]
*/
use @g_object_get_qdata[Pointer[None]](gobject: GObjectStruct tag, quark: U32)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:430
  Original Name: g_object_get_type/usr/include/glib-2.0/gobject/gobject.h:430

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
*/
use @g_object_get_type[U64]()



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:459
  Original Name: g_object_get/usr/include/glib-2.0/gobject/gobject.h:459

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_get[None](pobject: Pointer[None] tag, firstpropertyname: Pointer[U8] tag, ...)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:485
  Original Name: g_object_get_valist/usr/include/glib-2.0/gobject/gobject.h:485

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:480
  Original Name: g_object_getv/usr/include/glib-2.0/gobject/gobject.h:480

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f136]
*/
use @g_object_getv[None](gobject: GObjectStruct tag, nproperties: U32, names: Pointer[Pointer[U8]] tag, values: GValueStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:423
  Original Name: g_object_interface_find_property/usr/include/glib-2.0/gobject/gobject.h:423

  Return Value: [PointerType size=64]->[Struct size=576,fid: f137]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_interface_find_property[GParamSpecStruct](giface: Pointer[None] tag, propertyname: Pointer[U8] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:420
  Original Name: g_object_interface_install_property/usr/include/glib-2.0/gobject/gobject.h:420

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[Struct size=576,fid: f137]
*/
use @g_object_interface_install_property[None](giface: Pointer[None] tag, pspec: GParamSpecStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:426
  Original Name: g_object_interface_list_properties/usr/include/glib-2.0/gobject/gobject.h:426

  Return Value: [PointerType size=64]->[PointerType size=64]->[Struct size=576,fid: f137]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
use @g_object_interface_list_properties[Pointer[GParamSpecStruct]](giface: Pointer[None] tag, npropertiesp: Pointer[U32] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:507
  Original Name: g_object_is_floating/usr/include/glib-2.0/gobject/gobject.h:507

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_is_floating[I32](pobject: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:432
  Original Name: g_object_new/usr/include/glib-2.0/gobject/gobject.h:432

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_new[GObjectStruct](objecttype: U64, firstpropertyname: Pointer[U8] tag, ...)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:451
  Original Name: g_object_new_valist/usr/include/glib-2.0/gobject/gobject.h:451

  Return Value: [PointerType size=64]->[Struct size=192,fid: f143]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:444
  Original Name: g_object_newv/usr/include/glib-2.0/gobject/gobject.h:444

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[Struct size=256,fid: f137]
*/
//use @g_object_newv[Pointer[None]](objecttype: U64, nparameters: U32, parameters: GParameterStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:436
  Original Name: g_object_new_with_properties/usr/include/glib-2.0/gobject/gobject.h:436

  Return Value: [PointerType size=64]->[Struct size=192,fid: f143]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f136]
*/
use @g_object_new_with_properties[GObjectStruct](objecttype: U64, nproperties: U32, names: Pointer[Pointer[U8]] tag, values: GValueStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:502
  Original Name: g_object_notify_by_pspec/usr/include/glib-2.0/gobject/gobject.h:502

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[Struct size=576,fid: f137]
*/
use @g_object_notify_by_pspec[None](gobject: GObjectStruct tag, pspec: GParamSpecStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:499
  Original Name: g_object_notify/usr/include/glib-2.0/gobject/gobject.h:499

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_notify[None](gobject: GObjectStruct tag, propertyname: Pointer[U8] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:509
  Original Name: g_object_ref_sink/usr/include/glib-2.0/gobject/gobject.h:509

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_ref_sink[GObjectStruct](pobject: GObjectStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:513
  Original Name: g_object_ref/usr/include/glib-2.0/gobject/gobject.h:513

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_ref[GObjectStruct](pobject: GObjectStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:560
  Original Name: g_object_remove_toggle_ref/usr/include/glib-2.0/gobject/gobject.h:560

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_remove_toggle_ref[None](gobject: GObjectStruct tag, notify: Pointer[None] tag, data: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:528
  Original Name: g_object_remove_weak_pointer/usr/include/glib-2.0/gobject/gobject.h:528

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_remove_weak_pointer[None](gobject: GObjectStruct tag, weakpointerlocation: Pointer[Pointer[None]] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:615
  Original Name: g_object_replace_data/usr/include/glib-2.0/gobject/gobject.h:615

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @g_object_replace_data[I32](gobject: GObjectStruct tag, key: Pointer[U8] tag, oldval: Pointer[None] tag, newval: Pointer[None] tag, destroy: Pointer[None] tag, olddestroy: Pointer[Pointer[None]] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:586
  Original Name: g_object_replace_qdata/usr/include/glib-2.0/gobject/gobject.h:586

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @g_object_replace_qdata[I32](gobject: GObjectStruct tag, quark: U32, oldval: Pointer[None] tag, newval: Pointer[None] tag, destroy: Pointer[None] tag, olddestroy: Pointer[Pointer[None]] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:653
  Original Name: g_object_run_dispose/usr/include/glib-2.0/gobject/gobject.h:653

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
*/
use @g_object_run_dispose[None](gobject: GObjectStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:601
  Original Name: g_object_set_data_full/usr/include/glib-2.0/gobject/gobject.h:601

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @g_object_set_data_full[None](gobject: GObjectStruct tag, key: Pointer[U8] tag, data: Pointer[None] tag, destroy: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:597
  Original Name: g_object_set_data/usr/include/glib-2.0/gobject/gobject.h:597

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_set_data[None](gobject: GObjectStruct tag, key: Pointer[U8] tag, data: Any tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:572
  Original Name: g_object_set_qdata_full/usr/include/glib-2.0/gobject/gobject.h:572

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @g_object_set_qdata_full[None](gobject: GObjectStruct tag, quark: U32, data: Pointer[None] tag, destroy: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:568
  Original Name: g_object_set_qdata/usr/include/glib-2.0/gobject/gobject.h:568

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_set_qdata[None](gobject: GObjectStruct tag, quark: U32, data: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:455
  Original Name: g_object_set/usr/include/glib-2.0/gobject/gobject.h:455

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_set[None](pobject: Pointer[None] tag, firstpropertyname: Pointer[U8] tag, ...)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:476
  Original Name: g_object_set_valist/usr/include/glib-2.0/gobject/gobject.h:476

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:471
  Original Name: g_object_setv/usr/include/glib-2.0/gobject/gobject.h:471

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f136]
*/
use @g_object_setv[None](gobject: GObjectStruct tag, nproperties: U32, names: Pointer[Pointer[U8]] tag, values: GValueStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:606
  Original Name: g_object_steal_data/usr/include/glib-2.0/gobject/gobject.h:606

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @g_object_steal_data[Pointer[None]](gobject: GObjectStruct tag, key: Pointer[U8] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:577
  Original Name: g_object_steal_qdata/usr/include/glib-2.0/gobject/gobject.h:577

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [FundamentalType(unsigned int) size=32]
*/
use @g_object_steal_qdata[Pointer[None]](gobject: GObjectStruct tag, quark: U32)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:511
  Original Name: g_object_take_ref/usr/include/glib-2.0/gobject/gobject.h:511

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_take_ref[Pointer[None]](pobject: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:505
  Original Name: g_object_thaw_notify/usr/include/glib-2.0/gobject/gobject.h:505

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
*/
use @g_object_thaw_notify[None](gobject: GObjectStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:515
  Original Name: g_object_unref/usr/include/glib-2.0/gobject/gobject.h:515

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_unref[None](pobject: GObjectStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:624
  Original Name: g_object_watch_closure/usr/include/glib-2.0/gobject/gobject.h:624

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[Struct size=256,fid: f138]
*/
//use @g_object_watch_closure[None](gobject: GObjectStruct tag, closure: GClosureStruct tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:517
  Original Name: g_object_weak_ref/usr/include/glib-2.0/gobject/gobject.h:517

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_weak_ref[None](gobject: GObjectStruct tag, notify: Pointer[None] tag, data: Pointer[None] tag)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:521
  Original Name: g_object_weak_unref/usr/include/glib-2.0/gobject/gobject.h:521

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @g_object_weak_unref[None](gobject: GObjectStruct tag, notify: Pointer[None] tag, data: Pointer[None] tag)

/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:489
  Original Name: g_object_set_property/usr/include/glib-2.0/gobject/gobject.h:489

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f143]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f136]
*/
use @g_object_set_property[None](gobject: GObjectStruct tag, propertyname: Pointer[U8] tag, value: GValueStruct tag)


