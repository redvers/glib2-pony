use "glib"
use "gobject"

use @g_list_model_get_item_type[U64](list: GObjectStruct tag)
use @g_list_model_get_object[GObjectStruct](list: GObjectStruct tag, posn: U32)

trait GListModelInterface
  fun ref get_ptr(): GObjectStruct

  fun ref get_item_type(): U64 =>
    GListModel.get_item_type(get_ptr())

  fun ref get_object(posn: U32): GObjectStruct =>
    GListModel.get_object(get_ptr(), posn)

primitive GListModel
  fun get_item_type(ptr: GObjectStruct tag): U64 =>
    @g_list_model_get_item_type(ptr)

  fun get_object(ptr: GObjectStruct tag, posn: U32): GObjectStruct =>
    @g_list_model_get_object(ptr, posn)

